namespace Merger
{
    partial class Merger
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblInputPath = new System.Windows.Forms.Label();
            this.btnMerge = new System.Windows.Forms.Button();
            this.btnIPFolder = new System.Windows.Forms.Button();
            this.fbDialog = new System.Windows.Forms.FolderBrowserDialog();
            this.lblOuputPath = new System.Windows.Forms.Label();
            this.btnOPFolder = new System.Windows.Forms.Button();
            this.pb = new System.Windows.Forms.ProgressBar();
            this.SuspendLayout();
            // 
            // lblInputPath
            // 
            this.lblInputPath.AutoSize = true;
            this.lblInputPath.Location = new System.Drawing.Point(3, 9);
            this.lblInputPath.Name = "lblInputPath";
            this.lblInputPath.Size = new System.Drawing.Size(0, 13);
            this.lblInputPath.TabIndex = 0;
            // 
            // btnMerge
            // 
            this.btnMerge.Location = new System.Drawing.Point(72, 157);
            this.btnMerge.Name = "btnMerge";
            this.btnMerge.Size = new System.Drawing.Size(148, 31);
            this.btnMerge.TabIndex = 3;
            this.btnMerge.Text = "Merge";
            this.btnMerge.UseVisualStyleBackColor = true;
            this.btnMerge.Click += new System.EventHandler(this.btnMerge_Click);
            // 
            // btnIPFolder
            // 
            this.btnIPFolder.Location = new System.Drawing.Point(229, 36);
            this.btnIPFolder.Name = "btnIPFolder";
            this.btnIPFolder.Size = new System.Drawing.Size(75, 24);
            this.btnIPFolder.TabIndex = 1;
            this.btnIPFolder.Text = "Input path";
            this.btnIPFolder.UseVisualStyleBackColor = true;
            this.btnIPFolder.Click += new System.EventHandler(this.btnFolder_Click);
            // 
            // lblOuputPath
            // 
            this.lblOuputPath.AutoSize = true;
            this.lblOuputPath.Location = new System.Drawing.Point(3, 61);
            this.lblOuputPath.Name = "lblOuputPath";
            this.lblOuputPath.Size = new System.Drawing.Size(0, 13);
            this.lblOuputPath.TabIndex = 3;
            // 
            // btnOPFolder
            // 
            this.btnOPFolder.Location = new System.Drawing.Point(229, 98);
            this.btnOPFolder.Name = "btnOPFolder";
            this.btnOPFolder.Size = new System.Drawing.Size(75, 24);
            this.btnOPFolder.TabIndex = 2;
            this.btnOPFolder.Text = "Output path";
            this.btnOPFolder.UseVisualStyleBackColor = true;
            this.btnOPFolder.Click += new System.EventHandler(this.btnOPFolder_Click);
            // 
            // pb
            // 
            this.pb.Location = new System.Drawing.Point(12, 139);
            this.pb.MarqueeAnimationSpeed = 10;
            this.pb.Maximum = 0;
            this.pb.Name = "pb";
            this.pb.Size = new System.Drawing.Size(284, 13);
            this.pb.Step = 1;
            this.pb.TabIndex = 5;
            // 
            // Merger
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(307, 190);
            this.Controls.Add(this.pb);
            this.Controls.Add(this.btnOPFolder);
            this.Controls.Add(this.lblOuputPath);
            this.Controls.Add(this.btnIPFolder);
            this.Controls.Add(this.btnMerge);
            this.Controls.Add(this.lblInputPath);
            this.MaximizeBox = false;
            this.Name = "Merger";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Merger";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblInputPath;
        private System.Windows.Forms.Button btnMerge;
        private System.Windows.Forms.Button btnIPFolder;
        private System.Windows.Forms.FolderBrowserDialog fbDialog;
        private System.Windows.Forms.Label lblOuputPath;
        private System.Windows.Forms.Button btnOPFolder;
        private System.Windows.Forms.ProgressBar pb;
    }
}

