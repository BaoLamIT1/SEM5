﻿namespace Demo_Excel_31_10
{
	partial class Form1
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
			this.groupBox1 = new System.Windows.Forms.GroupBox();
			this.cboChatLieu = new System.Windows.Forms.ComboBox();
			this.txtTenHang = new System.Windows.Forms.TextBox();
			this.txtDonGiaBan2 = new System.Windows.Forms.TextBox();
			this.txtMaHang = new System.Windows.Forms.TextBox();
			this.txtDonGiaBan1 = new System.Windows.Forms.TextBox();
			this.label7 = new System.Windows.Forms.Label();
			this.label6 = new System.Windows.Forms.Label();
			this.label5 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label1 = new System.Windows.Forms.Label();
			this.label8 = new System.Windows.Forms.Label();
			this.btnTim = new System.Windows.Forms.Button();
			this.btnIn = new System.Windows.Forms.Button();
			this.dgvHang = new System.Windows.Forms.DataGridView();
			this.dlgSave = new System.Windows.Forms.SaveFileDialog();
			this.groupBox1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgvHang)).BeginInit();
			this.SuspendLayout();
			// 
			// groupBox1
			// 
			this.groupBox1.Controls.Add(this.cboChatLieu);
			this.groupBox1.Controls.Add(this.txtTenHang);
			this.groupBox1.Controls.Add(this.txtDonGiaBan2);
			this.groupBox1.Controls.Add(this.txtMaHang);
			this.groupBox1.Controls.Add(this.txtDonGiaBan1);
			this.groupBox1.Controls.Add(this.label7);
			this.groupBox1.Controls.Add(this.label6);
			this.groupBox1.Controls.Add(this.label5);
			this.groupBox1.Controls.Add(this.label4);
			this.groupBox1.Controls.Add(this.label3);
			this.groupBox1.Controls.Add(this.label2);
			this.groupBox1.Controls.Add(this.label1);
			this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.groupBox1.ForeColor = System.Drawing.Color.Red;
			this.groupBox1.Location = new System.Drawing.Point(40, 72);
			this.groupBox1.Name = "groupBox1";
			this.groupBox1.Size = new System.Drawing.Size(748, 136);
			this.groupBox1.TabIndex = 0;
			this.groupBox1.TabStop = false;
			// 
			// cboChatLieu
			// 
			this.cboChatLieu.FormattingEnabled = true;
			this.cboChatLieu.Location = new System.Drawing.Point(605, 84);
			this.cboChatLieu.Name = "cboChatLieu";
			this.cboChatLieu.Size = new System.Drawing.Size(137, 26);
			this.cboChatLieu.TabIndex = 2;
			this.cboChatLieu.SelectedIndexChanged += new System.EventHandler(this.cboChatLieu_SelectedIndexChanged);
			// 
			// txtTenHang
			// 
			this.txtTenHang.Location = new System.Drawing.Point(605, 27);
			this.txtTenHang.Name = "txtTenHang";
			this.txtTenHang.Size = new System.Drawing.Size(137, 24);
			this.txtTenHang.TabIndex = 1;
			// 
			// txtDonGiaBan2
			// 
			this.txtDonGiaBan2.Location = new System.Drawing.Point(314, 80);
			this.txtDonGiaBan2.Name = "txtDonGiaBan2";
			this.txtDonGiaBan2.Size = new System.Drawing.Size(100, 24);
			this.txtDonGiaBan2.TabIndex = 1;
			// 
			// txtMaHang
			// 
			this.txtMaHang.Location = new System.Drawing.Point(94, 23);
			this.txtMaHang.Name = "txtMaHang";
			this.txtMaHang.Size = new System.Drawing.Size(320, 24);
			this.txtMaHang.TabIndex = 1;
			// 
			// txtDonGiaBan1
			// 
			this.txtDonGiaBan1.Location = new System.Drawing.Point(125, 80);
			this.txtDonGiaBan1.Name = "txtDonGiaBan1";
			this.txtDonGiaBan1.Size = new System.Drawing.Size(100, 24);
			this.txtDonGiaBan1.TabIndex = 1;
			// 
			// label7
			// 
			this.label7.AutoSize = true;
			this.label7.ForeColor = System.Drawing.Color.Red;
			this.label7.Location = new System.Drawing.Point(513, 33);
			this.label7.Name = "label7";
			this.label7.Size = new System.Drawing.Size(69, 18);
			this.label7.TabIndex = 0;
			this.label7.Text = "Tên hàng";
			// 
			// label6
			// 
			this.label6.AutoSize = true;
			this.label6.ForeColor = System.Drawing.Color.Red;
			this.label6.Location = new System.Drawing.Point(513, 88);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(65, 18);
			this.label6.TabIndex = 0;
			this.label6.Text = "Chất liệu";
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Location = new System.Drawing.Point(420, 87);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(49, 18);
			this.label5.TabIndex = 0;
			this.label5.Text = "(VNĐ)";
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(231, 84);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(81, 18);
			this.label4.TabIndex = 0;
			this.label4.Text = "(VNĐ) đến:";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(91, 83);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(28, 18);
			this.label3.TabIndex = 0;
			this.label3.Text = "từ: ";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(6, 68);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(87, 18);
			this.label2.TabIndex = 0;
			this.label2.Text = "Đơn giá bán";
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(6, 27);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(65, 18);
			this.label1.TabIndex = 0;
			this.label1.Text = "Mã hàng";
			// 
			// label8
			// 
			this.label8.AutoSize = true;
			this.label8.Font = new System.Drawing.Font("UTM Demian KT", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label8.ForeColor = System.Drawing.Color.IndianRed;
			this.label8.Location = new System.Drawing.Point(269, 26);
			this.label8.Name = "label8";
			this.label8.Size = new System.Drawing.Size(171, 28);
			this.label8.TabIndex = 1;
			this.label8.Text = "TÌM KIẾM HÀNG HOÁ";
			// 
			// btnTim
			// 
			this.btnTim.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnTim.Location = new System.Drawing.Point(58, 242);
			this.btnTim.Name = "btnTim";
			this.btnTim.Size = new System.Drawing.Size(101, 47);
			this.btnTim.TabIndex = 2;
			this.btnTim.Text = "Tìm kiếm";
			this.btnTim.UseVisualStyleBackColor = true;
			this.btnTim.Click += new System.EventHandler(this.btnTim_Click);
			// 
			// btnIn
			// 
			this.btnIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnIn.Location = new System.Drawing.Point(231, 242);
			this.btnIn.Name = "btnIn";
			this.btnIn.Size = new System.Drawing.Size(101, 47);
			this.btnIn.TabIndex = 2;
			this.btnIn.Text = "In ra Excel";
			this.btnIn.UseVisualStyleBackColor = true;
			this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
			// 
			// dgvHang
			// 
			this.dgvHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgvHang.Location = new System.Drawing.Point(58, 295);
			this.dgvHang.Name = "dgvHang";
			this.dgvHang.Size = new System.Drawing.Size(724, 239);
			this.dgvHang.TabIndex = 3;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
			this.ClientSize = new System.Drawing.Size(1011, 542);
			this.Controls.Add(this.dgvHang);
			this.Controls.Add(this.btnIn);
			this.Controls.Add(this.btnTim);
			this.Controls.Add(this.label8);
			this.Controls.Add(this.groupBox1);
			this.Name = "Form1";
			this.Text = "Form1";
			this.groupBox1.ResumeLayout(false);
			this.groupBox1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.dgvHang)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.GroupBox groupBox1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox txtTenHang;
		private System.Windows.Forms.TextBox txtDonGiaBan2;
		private System.Windows.Forms.TextBox txtMaHang;
		private System.Windows.Forms.TextBox txtDonGiaBan1;
		private System.Windows.Forms.Label label7;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label8;
		private System.Windows.Forms.Button btnTim;
		private System.Windows.Forms.Button btnIn;
		private System.Windows.Forms.DataGridView dgvHang;
		private System.Windows.Forms.ComboBox cboChatLieu;
		private System.Windows.Forms.SaveFileDialog dlgSave;
	}
}

