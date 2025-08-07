namespace DotNetInnerSource.Consumer
{
    public class Consumer
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("DotNetInnerSource.Consumer says Hello, world!");

            Producer.Producer p = new();
            p.EntryPoint();

        }
    }
}