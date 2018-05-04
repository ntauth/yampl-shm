#include "yampl/Exceptions.h"

#include "SocketFactory.h"
#include "ClientSocket.h"
#include "ServerSocket.h"

namespace yampl
{
    namespace shm
    {
        SCY_PLUGIN(SocketFactory, "yampl-shm", SocketFactory::PLUGIN_VERSION)

        ISocket *SocketFactory::createClientSocket(Channel channel, Semantics semantics, void (*deallocator)(void *, void *), const std::string& name){
            return new ClientSocket(channel, semantics, deallocator, name);
        }

        ISocket *SocketFactory::createServerSocket(Channel channel, Semantics semantics, void (*deallocator)(void *, void *)){
            return new ServerSocket(channel, semantics, deallocator);
        }
    }
}
