using System;
using System.Collections.Specialized;
using System.Windows.Forms;

class Program
{
    [STAThread]
    static void Main(string[] args)
    {
        if (args.Length == 0) return;
        var list = new StringCollection();
        foreach (var path in args)
        {
            list.Add(System.IO.Path.GetFullPath(path));
        }
        Clipboard.SetFileDropList(list);
    }
}
