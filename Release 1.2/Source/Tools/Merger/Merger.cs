using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace Merger
{
    public partial class Merger : Form
    {
        public Merger()
        {
            InitializeComponent();
        }

        private void btnFolder_Click(object sender, EventArgs e)
        {
            setPath(lblInputPath);
        }

        private void btnOPFolder_Click(object sender, EventArgs e)
        {
            setPath(lblOuputPath);
        }

        private void setPath(Label lbl)
        {
            fbDialog.ShowDialog();
            lbl.Text = fbDialog.SelectedPath;
        }

        private void btnMerge_Click(object sender, EventArgs e)
        {
            MergeFiles(lblInputPath.Text, lblOuputPath.Text);
        }

        private void MergeFiles(string inputPath,string outputPath)
        {
            string[] files = Directory.GetFiles(inputPath);
            FileStream fsIP = null, fsOP = new FileStream(string.Format(@"{0}\Merged.sql", outputPath), FileMode.OpenOrCreate, FileAccess.Write);
            try
            {
                byte[] buff = new byte[1024];
                int data = 0, iProgress = 1;
                pb.Maximum = files.GetLength(0);
                foreach (string file in files)
                {
                    pb.Value = iProgress;
                    fsIP = new FileStream(file, FileMode.Open, FileAccess.Read);
                    data = 0;
                    while ((data = fsIP.Read(buff, 0, 1024)) > 0)
                    {
                        fsOP.Write(buff, 0, data);
                    }
                    fsIP.Close();
                    iProgress++;
                }
            }
            catch (Exception exp)
            {
                throw exp;
            }
            finally
            {
                clearResources(fsIP);
                clearResources(fsOP);
            }
        }

        private void clearResources(FileStream fs)
        {
            if (fs != null)
            {
                fs.Close();
                fs.Dispose();
            }
        }
    }
}