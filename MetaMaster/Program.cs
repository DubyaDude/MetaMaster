using MetadataExtractor;
using System;
using System.Linq;

namespace MetaMaster
{
    internal class Program
    {
        public const string AppName = "MetaMaster";
        public const string AppVersion = "1.0.1";

        static void Main(string[] args)
        {
            Console.Title = $"{AppName} {AppVersion}";

            if (args.Length == 0)
            {
                Console.WriteLine("File not specified");
                Console.ReadLine();
                return;
            }

            Console.WriteLine(args[0]);

            try
            {
                var items = ImageMetadataReader.ReadMetadata(args[0]).GroupBy(x => x.Name);

                foreach (var directory in items)
                {
                    Console.WriteLine($"{Environment.NewLine}{directory.Key}");
                    foreach (var tag in directory.SelectMany(x => x.Tags))
                        Console.WriteLine($" => {tag.Name} = {tag.Description}");
                }
            }
            catch (ImageProcessingException exception)
            {
                Console.WriteLine($"{Environment.NewLine}Error reading item: {exception.Message}");
            }
            finally
            {
                Console.ReadLine();
            }
        }
    }
}
