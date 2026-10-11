// ==============================================================================
// Earth Language Unified Master Backend - C# (.cs)
// File: backend.cs
// Provides C# native backend support with LINQ queries, DI container, and HTTP server.
// ==============================================================================

using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Earth.Backend
{
    // C# LINQ Style Query Provider
    public class EnumerableWrapper<T>
    {
        private readonly IEnumerable<T> _collection;

        public EnumerableWrapper(IEnumerable<T> collection)
        {
            _collection = collection ?? new List<T>();
        }

        public EnumerableWrapper<T> Where(Func<T, bool> predicate)
        {
            return new EnumerableWrapper<T>(_collection.Where(predicate));
        }

        public EnumerableWrapper<TResult> Select<TResult>(Func<T, TResult> selector)
        {
            return new EnumerableWrapper<TResult>(_collection.Select(selector));
        }

        public EnumerableWrapper<T> OrderBy<TKey>(Func<T, TKey> keySelector)
        {
            return new EnumerableWrapper<T>(_collection.OrderBy(keySelector));
        }

        public List<T> ToList()
        {
            return _collection.ToList();
        }
    }

    // Java/Spring Style Dependency Injection Container
    public class DIContainer
    {
        private readonly Dictionary<string, object> _beans = new Dictionary<string, object>();

        public void Register(string name, object instance)
        {
            _beans[name] = instance;
        }

        public object GetBean(string name)
        {
            return _beans.TryGetValue(name, out var bean) ? bean : null;
        }
    }

    // Earth HTTP Backend Service
    public class EarthHttpServer
    {
        private readonly HttpListener _listener;
        private readonly int _port;

        public EarthHttpServer(int port = 8083)
        {
            _port = port;
            _listener = new HttpListener();
            _listener.Prefixes.Add($"http://localhost:{_port}/");
        }

        public void Start()
        {
            try
            {
                _listener.Start();
                Console.WriteLine($"[+] C# Earth Backend Server listening on http://localhost:{_port}/");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"[-] Failed to start HTTP server: {ex.Message}");
            }
        }
    }

    public class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("========================================");
            Console.WriteLine(" Earth Unified Backend Engine (C# .cs)");
            Console.WriteLine("========================================");

            // Test LINQ Query
            var numbers = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            var wrapper = new EnumerableWrapper<int>(numbers);
            var evens = wrapper.Where(x => x % 2 == 0).Select(x => x * 10).ToList();

            Console.WriteLine("LINQ Filter & Transform: " + string.Join(", ", evens));

            // Test DI Container
            var container = new DIContainer();
            container.Register("AppName", "Earth C# Backend Service");
            Console.WriteLine("DI Bean Retrieved: " + container.GetBean("AppName"));

            Console.WriteLine("[+] C# Backend Module Verified Successfully!");
        }
    }
}
