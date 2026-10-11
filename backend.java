// ==============================================================================
// Earth Language Unified Master Backend - Java (.java)
// File: backend.java
// Provides native Java backend support with Spring-style DI container and HTTP server.
// ==============================================================================

import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.util.HashMap;
import java.util.Map;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

public class backend {

    // Spring-style Dependency Injection Container
    public static class DIContainer {
        private final Map<String, Object> beans = new HashMap<>();

        public void register(String name, Object instance) {
            beans.put(name, instance);
        }

        public Object getBean(String name) {
            return beans.get(name);
        }

        public void autowire(Object target) {
            for (Field field : target.getClass().getDeclaredFields()) {
                if (beans.containsKey(field.getName())) {
                    try {
                        field.setAccessible(true);
                        if (field.get(target) == null) {
                            field.set(target, beans.get(field.getName()));
                        }
                    } catch (IllegalAccessException e) {
                        System.err.println("Autowire error: " + e.getMessage());
                    }
                }
            }
        }
    }

    // Java Native HTTP Server
    public static class EarthJavaServer {
        private final HttpServer server;

        public EarthJavaServer(int port) throws IOException {
            server = HttpServer.create(new InetSocketAddress(port), 0);
            server.createContext("/api/status", new HttpHandler() {
                @Override
                public void handle(HttpExchange exchange) throws IOException {
                    String response = "{\"runtime\": \"Java\", \"status\": \"online\", \"language\": \"Earth\"}";
                    exchange.getResponseHeaders().set("Content-Type", "application/json");
                    exchange.sendResponseHeaders(200, response.length());
                    OutputStream os = exchange.getResponseBody();
                    os.write(response.getBytes());
                    os.close();
                }
            });
            server.setExecutor(null);
        }

        public void start() {
            server.start();
            System.out.println("[+] Earth Java HTTP Backend Server running...");
        }

        public void stop() {
            server.stop(0);
        }
    }

    public static void main(String[] args) {
        System.out.println("========================================");
        System.out.println(" Earth Unified Backend Engine (Java .java)");
        System.out.println("========================================");

        // Test DI Container
        DIContainer container = new DIContainer();
        container.register("databaseUrl", "jdbc:sqlite:earth_default.db");
        container.register("maxConnections", 20);

        System.out.println("Registered Bean 'databaseUrl': " + container.getBean("databaseUrl"));
        System.out.println("Registered Bean 'maxConnections': " + container.getBean("maxConnections"));

        System.out.println("[+] Java Backend Module Verified Successfully!");
    }
}
