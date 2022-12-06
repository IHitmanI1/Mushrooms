using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ShowroomManagement
{
    public partial class LoginPass : Form
    {
        public class Personal
        {
            public int ID { get; set; }
            public string Login { get; set; }
            public string Password { get; set; }
            public string FIO { get; set; }
            public Nullable<decimal> Phone { get; set; }
            public string Permissions { get; set; }
        }

        class Users
        {
            public int ID { get; set; }
            public string Login { get; set; }
            public string Password { get; set; }
            public string FIO { get; set; }
            public Nullable<decimal> Phone { get; set; }
            public string Permissions { get; set; }
        }

        public LoginPass()
        {
            InitializeComponent();
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            
        }

        private const string APP_PATH = "https://localhost:44393/api";
        Managers managers = new Managers();
        Admin admin = new Admin();



        async void button1_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == "" || textBox1.Text == null || textBox2.Text == "" || textBox2.Text == null)
            {
                label3.Text = "Заполните поля";
                return;
            }
            label3.Text = "";
            var client = new HttpClient();
            var clientUs = new HttpClient();
            string msg, msgUs;
            try
            {
                var response = client.GetAsync(APP_PATH + "/Personal").Result;
                msg = response.Content.ReadAsStringAsync().Result;

                var response1 = clientUs.GetAsync(APP_PATH + "/Users").Result;
                msgUs = response1.Content.ReadAsStringAsync().Result;
            }
            catch (Exception)
            {
                label3.Text = $"Невозможно связаться с сервером";
                return;
            }
            List<Personal> users = (List<Personal>)Newtonsoft.Json.JsonConvert.DeserializeObject(msg, typeof(List<Personal>));

            List<Users> usersU = (List<Users>)Newtonsoft.Json.JsonConvert.DeserializeObject(msgUs, typeof(List<Users>));
            for (int i = 0; i < users.Count; i++)
            {
                if (users[i].Login == textBox1.Text)
                {
                    if (users[i].Password == textBox2.Text)
                    {
                        if (users[i].Permissions == "admin")
                        {
                            label4.Text = $"Добро пожаловать, {users[i].FIO}!\nПрава доступа: {users[i].Permissions}";
                            await Task.Delay(3000);
                            strings.user = users[i].FIO;
                            admin.Show();
                            users.Clear();
                            break;
                        }
                        if (users[i].Permissions == "manager")
                        {
                            label4.Text = $"Добро пожаловать, {users[i].FIO}!\nПрава доступа: {users[i].Permissions}";
                            await Task.Delay(3000);
                            strings.user = users[i].FIO;
                            managers.Show();
                            users.Clear();
                            break;
                        }
                    }
                    else
                    {
                        label3.Text = "Неверный логин/пароль";
                    }
                }
            }

            for (int i = 0; i < usersU.Count; i++)
            {
                if (usersU[i].Login == textBox1.Text)
                {
                    label4.Text = $"Ошибка доступа!\nПрава доступа: {usersU[i].Permissions}";
                    usersU.Clear();
                }   
            }
        }

        private void LoginPass_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == (char)Keys.Enter)
            {
                button1_Click(button1, null);
            }
        }
    }
}
