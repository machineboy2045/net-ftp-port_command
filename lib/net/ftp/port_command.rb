require "net/ftp/port_command/version"

module Net
  class FTP
    module PortCommand
      def port(host, port)
        @data_listening_host = host
        @data_listening_port = port
      end
    
      def makeport # :nodoc:
        TCPServer.open(@sock.addr[3], @data_listening_port || 0)
      end
      private :makeport
    
      def sendport(host, port) # :nodoc:
        host = @data_listening_host || host
        port = @data_listening_port || port
        af = (@sock.peeraddr)[0]
        if af == "AF_INET"
          cmd = "PORT " + (host.split(".") + port.divmod(256)).join(",")
        elsif af == "AF_INET6"
          cmd = sprintf("EPRT |2|%s|%d|", host, port)
        else
          raise FTPProtoError, host
        end
        voidcmd(cmd)
      end
      private :sendport
    end

    prepend PortCommand
  end
end
