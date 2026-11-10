using System;
using System.IO;
using System.Text;
using System.Windows.Forms;

class Program
{
    [STAThread]
    static void Main(string[] args)
    {
        string text = "";

        if (args.Length > 0)
        {
            text = string.Join(Environment.NewLine, args);
        }
        else if (Console.IsInputRedirected)
        {
            using (var reader = new StreamReader(Console.OpenStandardInput(), Encoding.UTF8))
            {
                text = reader.ReadToEnd();
            }
        }

        if (!string.IsNullOrEmpty(text))
        {
            Clipboard.SetText(text);
        }
    }
}

