using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics.SymbolStore;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ShowroomManagement
{
    public partial class Admin : Form
    {
        public class Cars
        {
            public int ID { get; set; }
            public string Mark { get; set; }
            public string Model { get; set; }
            public string YearOfIssue { get; set; }
            public string Class { get; set; }
            public string EngineVolume { get; set; }
            public string HorsePower { get; set; }
            public string Transmission { get; set; }
            public string Price { get; set; }
            public string Image { get; set; }
            public string URL { get; set; }
        }

        public class Users
        {
            public int ID { get; set; }
            public string Login { get; set; }
            public string Password { get; set; }
            public string FIO { get; set; }
            public Nullable<decimal> Phone { get; set; }
            public string Permissions { get; set; }
        }

        public class Personal
        {
            public int ID { get; set; }
            public string Login { get; set; }
            public string Password { get; set; }
            public string FIO { get; set; }
            public Nullable<decimal> Phone { get; set; }
            public string Permissions { get; set; }
        }

        public Admin()
        {
            InitializeComponent();
            this.MaximizeBox = false;
        }
        private const string APP_PATH = "https://localhost:44393/api";
        public bool rbCars = false;
        public bool rbUsers = false;
        public bool rbPersonal = false;

        void Get()
        {
            if (dataGridView1.ColumnCount > 0)
            {
                dataGridView1.Rows.Clear();
                for (int i = 0; i < dataGridView1.ColumnCount; i++)
                {
                    dataGridView1.Columns.RemoveAt(i);
                }
            }

            if (rbCars)
            {
                try
                {
                    var client = new HttpClient();
                    var response = client.GetAsync(APP_PATH + "/Car").Result;
                    string msg = response.Content.ReadAsStringAsync().Result;
                    List<Cars> car = (List<Cars>)Newtonsoft.Json.JsonConvert.DeserializeObject(msg, typeof(List<Cars>));

                    for (int i = 0; i < car.Count(); i++)
                    {
                        dataGridView1.Columns.Add(new DataGridViewTextBoxColumn
                        {
                            DataPropertyName = $"С{i}",
                            HeaderText = ""
                        });
                    }
                    dataGridView1.Columns[0].HeaderText = "ID";
                    dataGridView1.Columns[1].HeaderText = "Mark";
                    dataGridView1.Columns[2].HeaderText = "Model";
                    dataGridView1.Columns[3].HeaderText = "YearOfIssue";
                    dataGridView1.Columns[4].HeaderText = "Class";
                    dataGridView1.Columns[5].HeaderText = "EngineVolume";
                    dataGridView1.Columns[6].HeaderText = "HorsePower";
                    dataGridView1.Columns[7].HeaderText = "Transmission";
                    dataGridView1.Columns[8].HeaderText = "Price";
                    dataGridView1.Columns[9].HeaderText = "Image";
                    dataGridView1.Columns[10].HeaderText = "URL";

                    for (int i = 0; i < car.Count(); i++)
                    {
                        dataGridView1.Rows.Add();
                        dataGridView1[0, i].Value = car[i].ID.ToString();
                        dataGridView1[1, i].Value = car[i].Mark;
                        dataGridView1[2, i].Value = car[i].Model;
                        dataGridView1[3, i].Value = car[i].YearOfIssue;
                        dataGridView1[4, i].Value = car[i].Class;
                        dataGridView1[5, i].Value = car[i].EngineVolume;
                        dataGridView1[6, i].Value = car[i].HorsePower;
                        dataGridView1[7, i].Value = car[i].Transmission;
                        dataGridView1[8, i].Value = car[i].Price;
                        dataGridView1[9, i].Value = car[i].Image;
                        dataGridView1[10, i].Value = car[i].URL;
                    }

                    //for (int i = 0; i < dataGridView1.ColumnCount; i++)
                    //{
                    //    if (dataGridView1.Columns[i].HeaderText == null || dataGridView1.Columns[i].HeaderText == "")
                    //    {
                    //        dataGridView1.Columns.Remove(dataGridView1.Columns[i]);
                    //    }
                    //}
                }
                catch (Exception)
                {
                }
            }

            if (rbUsers)
            {
                try
                {
                    var client = new HttpClient();
                    var response = client.GetAsync(APP_PATH + "/Users").Result;
                    string msg = response.Content.ReadAsStringAsync().Result;
                    List<Users> us = (List<Users>)Newtonsoft.Json.JsonConvert.DeserializeObject(msg, typeof(List<Users>));

                    for (int i = 0; i < us.Count(); i++)
                    {
                        dataGridView1.Columns.Add(new DataGridViewTextBoxColumn
                        {
                            DataPropertyName = $"С{i}",
                            HeaderText = ""
                        });
                    }

                    dataGridView1.Columns[0].HeaderText = "ID";
                    dataGridView1.Columns[1].HeaderText = "Login";
                    dataGridView1.Columns[2].HeaderText = "Password";
                    dataGridView1.Columns[3].HeaderText = "FIO";
                    dataGridView1.Columns[4].HeaderText = "Phone";
                    dataGridView1.Columns[5].HeaderText = "Permissions";

                    for (int i = 0; i < us.Count(); i++)
                    {
                        dataGridView1.Rows.Add();
                        dataGridView1[0, i].Value = us[i].ID.ToString();
                        dataGridView1[1, i].Value = us[i].Login;
                        dataGridView1[2, i].Value = us[i].Password;
                        dataGridView1[3, i].Value = us[i].FIO;
                        dataGridView1[4, i].Value = us[i].Phone;
                        dataGridView1[5, i].Value = us[i].Permissions;
                    }
                }
                catch (Exception)
                {
                }
            }

            if (rbPersonal)
            {
                try
                {
                    var client = new HttpClient();
                    var response = client.GetAsync(APP_PATH + "/Personal").Result;
                    string msg = response.Content.ReadAsStringAsync().Result;
                    List<Users> us = (List<Users>)Newtonsoft.Json.JsonConvert.DeserializeObject(msg, typeof(List<Users>));

                    for (int i = 0; i < us.Count(); i++)
                    {
                        dataGridView1.Columns.Add(new DataGridViewTextBoxColumn
                        {
                            DataPropertyName = $"С{i}",
                            HeaderText = ""
                        });
                    }

                    dataGridView1.Columns[0].HeaderText = "ID";
                    dataGridView1.Columns[1].HeaderText = "Login";
                    dataGridView1.Columns[2].HeaderText = "Password";
                    dataGridView1.Columns[3].HeaderText = "FIO";
                    dataGridView1.Columns[4].HeaderText = "Phone";
                    dataGridView1.Columns[5].HeaderText = "Permissions";

                    for (int i = 0; i < us.Count(); i++)
                    {
                        dataGridView1.Rows.Add();
                        dataGridView1[0, i].Value = us[i].ID.ToString();
                        dataGridView1[1, i].Value = us[i].Login;
                        dataGridView1[2, i].Value = us[i].Password;
                        dataGridView1[3, i].Value = us[i].FIO;
                        dataGridView1[4, i].Value = us[i].Phone;
                        dataGridView1[5, i].Value = us[i].Permissions;
                    }
                }
                catch (Exception)
                {
                }
            }
        }
        async void Post()
        {
            if (rbCars)
            {
                try
                {
                    int i = 0;
                    string mark = textBox1.Text;
                    string model = textBox2.Text;
                    string yoi = textBox3.Text;
                    string cl = textBox4.Text;
                    string ev = textBox5.Text;
                    string hp = textBox6.Text;
                    string t = textBox7.Text;
                    string pr = textBox8.Text;
                    string im = textBox9.Text;
                    string url = textBox10.Text;
                    Cars product = new Cars { ID = i, Mark = mark, Model = model, YearOfIssue = yoi, Class = cl, EngineVolume = ev, HorsePower = hp, Transmission = t, Price = pr, Image = im, URL = url };
                    var client = new HttpClient();
                    var json_object = JsonConvert.SerializeObject(product);
                    HttpContent content = new StringContent(json_object.ToString(), Encoding.UTF8, "application/json");
                    HttpResponseMessage result = await client.PostAsync(APP_PATH + "/Car", content);

                    Get();
                }
                catch (Exception)
                {
                }
            }

            if (rbUsers)
            {
                try
                {
                    int i = 0;
                    string login = textBox1.Text;
                    string pass = textBox2.Text;
                    string fio = textBox3.Text;
                    decimal ph = decimal.Parse(textBox4.Text);
                    string perm = textBox5.Text;
                    Users product = new Users { ID = i, Login = login, Password = pass, FIO = fio, Phone = ph, Permissions = perm };
                    var client = new HttpClient();
                    var json_object = JsonConvert.SerializeObject(product);
                    HttpContent content = new StringContent(json_object.ToString(), Encoding.UTF8, "application/json");
                    HttpResponseMessage result = await client.PostAsync(APP_PATH + "/Users", content);

                    Get();
                }
                catch (Exception)
                {
                }
            }
            if (rbPersonal)
            {
                try
                {
                    int i = 0;
                    string login = textBox1.Text;
                    string pass = textBox2.Text;
                    string fio = textBox3.Text;
                    decimal ph = decimal.Parse(textBox4.Text);
                    string perm = textBox5.Text;
                    Users product = new Users { ID = i, Login = login, Password = pass, FIO = fio, Phone = ph, Permissions = perm };
                    var client = new HttpClient();
                    var json_object = JsonConvert.SerializeObject(product);
                    HttpContent content = new StringContent(json_object.ToString(), Encoding.UTF8, "application/json");
                    HttpResponseMessage result = await client.PostAsync(APP_PATH + "/Personal", content);

                    Get();
                }
                catch (Exception)
                {
                }
            }

            foreach(Control x in this.Controls)
            {
                if (x is TextBox)
                {
                    ((TextBox)x).Text = "";
                }
            }

        }
        async void Update()
        {
            if (rbCars)
            {
                try
                {
                    Cars c = new Cars();
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    c.ID = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    c.Mark = dataGridView1.Rows[selRowNum].Cells[1].Value.ToString();
                    c.Model = dataGridView1.Rows[selRowNum].Cells[2].Value.ToString();
                    c.YearOfIssue = dataGridView1.Rows[selRowNum].Cells[3].Value.ToString();
                    c.Class = dataGridView1.Rows[selRowNum].Cells[4].Value.ToString();
                    c.EngineVolume = dataGridView1.Rows[selRowNum].Cells[5].Value.ToString();
                    c.HorsePower = dataGridView1.Rows[selRowNum].Cells[6].Value.ToString();
                    c.Transmission = dataGridView1.Rows[selRowNum].Cells[7].Value.ToString();
                    c.Price = dataGridView1.Rows[selRowNum].Cells[8].Value.ToString();
                    c.Image = dataGridView1.Rows[selRowNum].Cells[9].Value.ToString();
                    c.URL = dataGridView1.Rows[selRowNum].Cells[10].Value.ToString();
                    using (var client = new HttpClient())
                    {
                        var serializedProduct = JsonConvert.SerializeObject(c);
                        var content = new StringContent(serializedProduct, Encoding.UTF8, "application/json");
                        var result = await client.PutAsync(String.Format("{0}/{1}", APP_PATH + "/Car", c.ID), content);
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }

            if (rbUsers)
            {
                try
                {
                    Users u = new Users();
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    u.ID = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    u.Login = dataGridView1.Rows[selRowNum].Cells[1].Value.ToString();
                    u.Password = dataGridView1.Rows[selRowNum].Cells[2].Value.ToString();
                    u.FIO = dataGridView1.Rows[selRowNum].Cells[3].Value.ToString();
                    u.Phone = decimal.Parse(dataGridView1.Rows[selRowNum].Cells[4].Value.ToString());
                    u.Permissions = dataGridView1.Rows[selRowNum].Cells[5].Value.ToString();

                    using (var client = new HttpClient())
                    {
                        var serializedProduct = JsonConvert.SerializeObject(u);
                        var content = new StringContent(serializedProduct, Encoding.UTF8, "application/json");
                        var result = await client.PutAsync(String.Format("{0}/{1}", APP_PATH + "/Users", u.ID), content);
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }

            if (rbPersonal)
            {
                try
                {
                    Personal p = new Personal();
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    p.ID = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    p.Login = dataGridView1.Rows[selRowNum].Cells[1].Value.ToString();
                    p.Password = dataGridView1.Rows[selRowNum].Cells[2].Value.ToString();
                    p.FIO = dataGridView1.Rows[selRowNum].Cells[3].Value.ToString();
                    p.Phone = decimal.Parse(dataGridView1.Rows[selRowNum].Cells[4].Value.ToString());
                    p.Permissions = dataGridView1.Rows[selRowNum].Cells[5].Value.ToString();

                    using (var client = new HttpClient())
                    {
                        var serializedProduct = JsonConvert.SerializeObject(p);
                        var content = new StringContent(serializedProduct, Encoding.UTF8, "application/json");
                        var result = await client.PutAsync(String.Format("{0}/{1}", APP_PATH + "/Personal", p.ID), content);
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }
        }
        async void Delete()
        {
            if (rbCars)
            {
                try
                {
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    int Num = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    using (var client = new HttpClient())
                    {
                        var result = await client.DeleteAsync(String.Format("{0}/{1}", APP_PATH + "/Car", Num));
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }

            if (rbUsers)
            {
                try
                {
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    int Num = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    using (var client = new HttpClient())
                    {
                        var result = await client.DeleteAsync(String.Format("{0}/{1}", APP_PATH + "/Users", Num));
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }

            if (rbPersonal)
            {
                try
                {
                    int selRowNum = dataGridView1.CurrentCell.RowIndex;
                    int Num = int.Parse(dataGridView1.Rows[selRowNum].Cells[0].Value.ToString());
                    using (var client = new HttpClient())
                    {
                        var result = await client.DeleteAsync(String.Format("{0}/{1}", APP_PATH + "/Personal", Num));
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                rbCars = true;
                rbUsers = false;
                rbPersonal = false;
            }
            else
                rbCars = false;


            if (rbCars)
            {
                comboBox1.SelectedIndex = -1;
                label1.Text = "Mark";
                label2.Text = "Model";
                label3.Text = "YearOfIssue";
                label4.Text = "Class";
                label5.Text = "EngineVolume";
                label6.Text = "HorsePower";
                label7.Text = "Transmission";
                label8.Text = "Price";
                label9.Text = "Image";
                label10.Text = "URL";

                changeEmergency.Visible = false;
                changeRights.Visible = false;

                if (!textBox6.Visible || !textBox7.Visible)
                {
                    textBox6.Visible = true;
                    textBox7.Visible = true;
                    textBox8.Visible = true;
                    textBox9.Visible = true;
                    textBox10.Visible = true;
                }
                Get();
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                rbUsers = true;
                rbPersonal=false;
                rbCars = false;
            }
            else
            {
                rbUsers = false;
            }

            if (rbUsers)
            {
                comboBox1.SelectedIndex = -1;
                label1.Text = "Login";
                label2.Text = "Password";
                label3.Text = "FIO";
                label4.Text = "Phone";
                label5.Text = "Permissions";

                changeEmergency.Visible = false;

                if (label7.Text != "" && textBox7.Visible)
                {
                    label6.Text = "";
                    label7.Text = "";
                    label8.Text = "";
                    label9.Text = "";
                    label10.Text = "";

                    textBox6.Visible = false;
                    textBox7.Visible = false;
                    textBox8.Visible = false;
                    textBox9.Visible = false;
                    textBox10.Visible = false;

                }
                Get();
            }
        }

        private void Admin_Load(object sender, EventArgs e)
        {
            Text = "Admin:" + $" {strings.user}";
            radioButton1.Checked = true;
            changeEmergency.Checked = false;
            changeRights.Visible = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Post();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Delete();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Update();
        }

        async void changeRights_Click(object sender, EventArgs e)
        {
            if (rbPersonal)
            {
                try
                {
                    var client = new HttpClient();
                    var response = client.GetAsync(APP_PATH + "/Personal").Result;
                    string msg = response.Content.ReadAsStringAsync().Result;
                    List<Users> us = (List<Users>)Newtonsoft.Json.JsonConvert.DeserializeObject(msg, typeof(List<Users>));
                    for (int i = 0; i < dataGridView1.RowCount - 1; i++)
                    {
                        dataGridView1.CurrentCell = dataGridView1[5, i];
                        if (dataGridView1[5, i].Value.ToString() == "manager")
                        {
                            dataGridView1.CurrentCell = dataGridView1[5, i];
                            dataGridView1[5, i].Value = "user";
                            Update();
                            await Task.Delay(3000);
                        }
                    }
                    Get();
                }
                catch (Exception)
                {
                }
            }
        }

        private void changeEmergency_CheckedChanged(object sender, EventArgs e)
        {
            if (changeEmergency.Checked)
            {
                changeRights.Visible = true;
            }
            else
            {
                changeRights.Visible = false;
            }
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked)
            {
                rbPersonal = true;
                rbCars = false;
                rbUsers = false;
            }
            else
            {
                rbPersonal = false;
            }

            if (rbPersonal)
            {
                comboBox1.SelectedIndex = -1;
                label1.Text = "Login";
                label2.Text = "Password";
                label3.Text = "FIO";
                label4.Text = "Phone";
                label5.Text = "Permissions";

                changeEmergency.Visible = true;
                if (changeEmergency.Checked)
                {
                    changeRights.Visible = true;
                }
                else
                {
                    changeRights.Visible = false;
                }

                if (label6.Text != "" && textBox6.Visible)
                {
                    label6.Text = "";
                    label7.Text = "";
                    label8.Text = "";
                    label9.Text = "";
                    label10.Text = "";

                    textBox6.Visible = false;
                    textBox7.Visible = false;
                    textBox8.Visible = false;
                    textBox9.Visible = false;
                    textBox10.Visible = false;
                }
                Get();
            }
        }

        void Filter(int q)
        {
            int a, b;
            a = dataGridView1.ColumnCount-1;
            b = dataGridView1.RowCount-1;
            for (int j = 0; j < a; j++)
            {
                for (int i = 0; i < b; i++)
                {
                    if (!(dataGridView1.Rows[i].Cells[q].Value.ToString().Contains(textBox11.Text)))
                    {
                        dataGridView1.Rows[i].Visible= false;
                    }
                }
                for (int c = 0; c < b; c++)
                {
                    dataGridView1.Rows[b].Visible = true;
                }
            }
        }
        private void button1_Click(object sender, EventArgs e)
        {
            Get();
            switch (comboBox1.SelectedIndex)
            {
                case 0: Filter(0); break; 
                case 1: Filter(1); break; 
                case 2: Filter(2); break;
                case 3: Filter(3); break;
                case 4: Filter(4); break;
                case 5: Filter(5); break;
                case 6: Filter(6); break;
                case 7: Filter(7); break;
                case 8: Filter(8); break;
                case 9: Filter(9); break;
                case 10: Filter(10); break;
                default:
                    break;
            }
        }

        private void comboBox1_Click(object sender, EventArgs e)
        {
            if (rbCars)
            {
                if (comboBox1.Items.Count == 0)
                {
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Mark");
                    comboBox1.Items.Add("Model");
                    comboBox1.Items.Add("YearOfIssue");
                    comboBox1.Items.Add("Class");
                    comboBox1.Items.Add("EngineVolume");
                    comboBox1.Items.Add("HorsePower");
                    comboBox1.Items.Add("Transmission");
                    comboBox1.Items.Add("Price");
                    comboBox1.Items.Add("Image");
                    comboBox1.Items.Add("URL");
                }
                else
                {
                    comboBox1.Items.Clear();
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Mark");
                    comboBox1.Items.Add("Model");
                    comboBox1.Items.Add("YearOfIssue");
                    comboBox1.Items.Add("Class");
                    comboBox1.Items.Add("EngineVolume");
                    comboBox1.Items.Add("HorsePower");
                    comboBox1.Items.Add("Transmission");
                    comboBox1.Items.Add("Price");
                    comboBox1.Items.Add("Image");
                    comboBox1.Items.Add("URL");
                }
            }

            if (rbUsers)
            {
                if (comboBox1.Items.Count == 0)
                {
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Login");
                    comboBox1.Items.Add("Password");
                    comboBox1.Items.Add("FIO");
                    comboBox1.Items.Add("Phone");
                    comboBox1.Items.Add("Permissions");

                }
                else
                {
                    comboBox1.Items.Clear();
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Login");
                    comboBox1.Items.Add("Password");
                    comboBox1.Items.Add("FIO");
                    comboBox1.Items.Add("Phone");
                    comboBox1.Items.Add("Permissions");
                }
            }

            if (rbPersonal)
            {
                if (comboBox1.Items.Count == 0)
                {
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Login");
                    comboBox1.Items.Add("Password");
                    comboBox1.Items.Add("FIO");
                    comboBox1.Items.Add("Phone");
                    comboBox1.Items.Add("Permissions");

                }
                else
                {
                    comboBox1.Items.Clear();
                    comboBox1.Items.Add("ID");
                    comboBox1.Items.Add("Login");
                    comboBox1.Items.Add("Password");
                    comboBox1.Items.Add("FIO");
                    comboBox1.Items.Add("Phone");
                    comboBox1.Items.Add("Permissions");
                }
            }
        }

        private void textBox11_TextChanged(object sender, EventArgs e)
        {
            if (textBox11.Text == null || textBox11.Text == "")
            {
                Get();
            }
        }
    }  
}

