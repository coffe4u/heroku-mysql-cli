require 'fileutils'

module BuildPack
  class Installer
    class << self

      def install(build_dir, cache_dir)
          run_command_with_message(command: "apt-get update", message: "Reloading apt-get")
          run_command_with_message(command: "wget --no-check-certificate -qO - 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x859be8d7c586f538430b19c2467b942d3a79bd29' | gpg --dearmor -o /usr/share/keyrings/mysql-keyring.gpg", message: "Install Mysql GPG key")
          run_command_with_message(command: "echo \"deb [signed-by=/usr/share/keyrings/mysql-keyring.gpg] http://repo.mysql.com/apt/ubuntu/ bionic mysql-5.7\" | sudo tee /etc/apt/sources.list.d/mysql.list", message: "Add Mysql deb repository")
          run_command_with_message(command: "apt install -fy mysql-community-client=5.7.39-1ubuntu18.04", message: "Install MySQL community client")
          run_command_with_message(command: "apt install -fy mysql-client=5.7.39-1ubuntu18.04", message: "Install MySQL client")
      end

      private

      def run_command_with_message(command:, message:)
        Logger.log_header("#{message}")
        Logger.log("#{command}")
        output = `#{command}`
        puts output
      end
    end
  end
end
