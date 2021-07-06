using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Epam.Library.Entities;
using Epam.Library.DAL.Interfaces;

namespace Epam.Library.SqlDAL
{
    public class LibrarySqlDAL : ILibraryDAL
    {
        static string conString = @"Data Source=HOME-PC;Initial Catalog=Библиотека;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection con = new SqlConnection(conString);

        //Добавление пользователя (регистрация)
        public bool AddUserDAL(UserEntity user)
        {
            try
            {
                // Создание подключения
                con.Open();
                Console.WriteLine("Подключение открыто");

                /* 
                //Переделать в дальнейшем на процедуры 

                SqlCommand com1 = new SqlCommand("ДобавлениеПользователя", con);
                com1.CommandType = CommandType.StoredProcedure;
                com1.Parameters.AddWithValue("@password", user.Password);
                com1.Parameters.AddWithValue("@type", user.UserType);
                com1.Parameters.AddWithValue("@surname", user.Surname);
                com1.Parameters.AddWithValue("@name", user.Name);
                com1.Parameters.AddWithValue("@patronymic", user.Patronymic);
                com1.Parameters.AddWithValue("@gender", user.Gender);
                com1.Parameters.AddWithValue("@dateOfBirth", user.DateOfBirth);*/

                SqlDataAdapter adap = new SqlDataAdapter("Insert into Пользователь(пароль,тип_пользователя,фамилия,имя,отчество,пол,дата_рождения) values('" + user.Password + "','" + user.UserType + "','" + user.Surname + "','" + user.Name + "','" + user.Patronymic + "','" + user.Gender + "','" + user.DateOfBirth +"')", con);
                DataTable dt = new DataTable();
                adap.Fill(dt);
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                con.Close();
                Console.WriteLine("Подключение закрыто");
            }
            //Console.Read();
            return true;
        }
        //Получение пользователя (доработать)
        public UserEntity GetUserDAL(int id)
        {
            return new UserEntity();
        }
        //Вывод списка всех пользователей
        public object GetUsersDAL()
        {
            SqlDataAdapter adap = new SqlDataAdapter("Select * from Пользователь", con);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }

        //(доработать)
        public void EditUserDAL(string password, string type, string surname, string name, string patronymic, string gender, string dateOfBirth)
        {

        }
        //(доработать)
        public bool AddBookDAL(BookEntity book)
        {
            return true;
        }
        //(доработать)
        public void RemoveBookDAL(int id) { }
        //(доработать)
        public BookEntity GetBookDAL(string title) 
        {
            return new BookEntity();
            /*using (con))
            {
                con.Open();
                SqlCommand command = new SqlCommand("ЧтениеКниг", con);
                // указываем, что команда представляет хранимую процедуру
                command.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter nameParam = new SqlParameter
                {
                    ParameterName = "@title",
                    Value = 
                };
                // добавляем параметр
                command.Parameters.Add(nameParam);*/
        }

    }
}
