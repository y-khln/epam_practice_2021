using System;
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
        //Аутентификация
        public bool Authentification(int id, string password)
        {
            SqlCommand com = new SqlCommand("Аутентификация", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", id);
            com.Parameters.AddWithValue("@password", password);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            int i = 0;
            foreach (DataRow row in dt.Rows)
            {
                i++;
            }
            if (i == 0) return false;
            else return true;
        }
        //.
        //ПОЛЬЗОВАТЕЛИ
        //.
        //Подсчет общего числа пользователей
        public int CountDAL()
        {
            SqlCommand com = new SqlCommand("ВсеПользователи", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            int i = 0;
            foreach (DataRow row in dt.Rows)
            {
                i++;
            }
            return i;
        }
        //Добавить пользователя (регистрация)
        public bool AddUserDAL(UserEntity user)
        {
            SqlCommand com = new SqlCommand("ДобавлениеПользователя", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@password", user.Password);
            com.Parameters.AddWithValue("@type", user.UserType);
            com.Parameters.AddWithValue("@surname", user.Surname);
            com.Parameters.AddWithValue("@name", user.Name);
            com.Parameters.AddWithValue("@patronymic", user.Patronymic);
            com.Parameters.AddWithValue("@gender", user.Gender);
            com.Parameters.AddWithValue("@dateOfBirth", user.DateOfBirth);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            //SqlDataAdapter adap = new SqlDataAdapter("Insert into Пользователь(пароль,тип_пользователя,фамилия,имя,отчество,пол,дата_рождения) values('" + user.Password + "','" + user.UserType + "','" + user.Surname + "','" + user.Name + "','" + user.Patronymic + "','" + user.Gender + "','" + user.DateOfBirth +"')", con);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return true;
        }
        //Профиль пользователя по id упрощенный вариант
        public object GetUserDAL(int id)
        {
            SqlCommand com = new SqlCommand("ИнфоПользователь", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@userid", id);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Профиль пользователя по id полный вариант
        public object GetUserFullDAL(int id)
        {
            SqlCommand com = new SqlCommand("ИнфоПользователяДляИзменения", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@userid", id);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Список всех пользователей
        public object GetUsersDAL()
        {
            SqlCommand com = new SqlCommand("ВсеПользователи", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Редактирование профиля пользователя
        public void EditUserDAL(int id, string password, string type, string surname, string name, string patronymic, string birth)
        {
            SqlCommand com = new SqlCommand("ИзменениеДанныхПользователя", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", id);
            com.Parameters.AddWithValue("@password", password);
            com.Parameters.AddWithValue("@type", type);
            com.Parameters.AddWithValue("@surname", surname);
            com.Parameters.AddWithValue("@name", name);
            com.Parameters.AddWithValue("@patronymic", patronymic);
            com.Parameters.AddWithValue("@birth", birth);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
        }
        //.
        //КНИГИ
        //.
        //Добавить книгу в библиотеку
        public bool AddBookDAL(BookEntity book)
        {
            SqlCommand com = new SqlCommand("ДобавлениеКниги", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@title", book.Title);
            com.Parameters.AddWithValue("@author", book.Author);
            com.Parameters.AddWithValue("@edition", book.Edition);
            com.Parameters.AddWithValue("@editionYear", book.EditionYear);
            com.Parameters.AddWithValue("@place", book.Place);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return true;
        }
        //Получить все книги
        public object GetBooksDAL()
        {
            SqlCommand com = new SqlCommand("ЧтениеКниг", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Получить книгу по указанному id
        public object GetBookIDDAL(int id)
        {
            SqlCommand com = new SqlCommand("ПоискКнигиПоID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", id);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Получить книги по названию
        public object GetBookTitleDAL(string title)
        {
            SqlCommand com = new SqlCommand("ПоискКнигПоНазванию", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@title", title);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            return dt;
        }
        //Удалить книгу по указанному id
        public void RemoveBookDAL(int id) 
        {
            SqlCommand com = new SqlCommand("УдалитьКнигуID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@id", id);
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
        }
        //Изменение в книге указанных пользователем полей
        public void EditBookDAL(int id, string title, string author, string edition, string editionYear, string place)
        {
            SqlCommand com = new SqlCommand("ИзменениеКниги", con);
            com.Parameters.AddWithValue("@id", id);
            com.Parameters.AddWithValue("@title", title);
            com.Parameters.AddWithValue("@author", author);
            com.Parameters.AddWithValue("@edition", edition);
            com.Parameters.AddWithValue("@editionYear", editionYear);
            com.Parameters.AddWithValue("@place", place);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adap.Fill(dt);
        }
    }
}
