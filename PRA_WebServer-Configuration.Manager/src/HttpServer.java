import configuration.Configuration;
import configuration.ConfigurationManager;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class HttpServer {
    public static void main(String[] args) {
        System.out.println("Server Starting...");


        ConfigurationManager.getInstance().loadConfigurationFile("src/configuration/conf.json");
        Configuration conf = ConfigurationManager.getInstance().getCurrentConfiguration();
        System.out.println("Using port: " + conf.getPort());
        System.out.println("Using WebRoot: " + conf.getWebroot());

        int port = conf.getPort();
        try (ServerSocket serverSocket = new ServerSocket(port)) {
            System.out.println("Server is listening on port " + port);

            while (true) {
                // Accetta una nuova connessione
                Socket clientSocket = serverSocket.accept();
                System.out.println("Accepted connection from " + clientSocket.getInetAddress());
                //THREAD
                Thread connectionHandler = new Thread(() -> handleConnection(clientSocket));
                connectionHandler.start();
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void handleConnection(Socket clientSocket) {
        try {
            // Gestisci la connessione qui
            // Implementa la logica del protocollo HTTP, ad esempio leggi e scrivi dati sul socket
            // ...
            //clientSocket.

            // Chiudi il socket del client quando la connessione è completata
            clientSocket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
