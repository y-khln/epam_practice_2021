using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Epam.Library.Entities;

namespace Epam.Library.BLL.Interfaces
{
    public interface ILibraryLogic
    {
        //Пользователи
        bool AddUser(UserEntity user);
        UserEntity GetUser(int id);
        void EditUser(string password, string type, string surname, string name, string patronymic, string gender, string dateOfBirth);

        //Книги
        bool AddBook(BookEntity book);
        void RemoveBook(int id);
        //(доработать)
        //void EditBook();
        BookEntity GetBook(string title);
        //(доработать)
        //IEnumerable<BookEntity> GetBooks(bool oreredById = true);
    }

}

