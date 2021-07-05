using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Epam.Library.BLL.Interfaces;
using Epam.Library.DAL.Interfaces;
using Epam.Library.Entities;

namespace Epam.Library.BLL
{
    public class LibraryLogic : ILibraryLogic
    {
        private ILibraryDAL _libraryDAL;

        public LibraryLogic(ILibraryDAL libraryDAL)
        {
            _libraryDAL = libraryDAL;
        }
        //(доработать)
        public LibraryLogic()
        {
        }

        //Пользователи
        public bool AddUser(UserEntity user) => _libraryDAL.AddUserDAL(user);
        public UserEntity GetUser(int id) => _libraryDAL.GetUserDAL(id);
        public void EditUser(string password, string type, string surname, string name, string patronymic, string gender, string dateOfBirth)
        => _libraryDAL.EditUserDAL(password, type, surname, name, patronymic, gender, dateOfBirth);

        //Книги
        public bool AddBook(BookEntity book) => _libraryDAL.AddBookDAL(book);
        public void RemoveBook(int id) => _libraryDAL.RemoveBookDAL(id);
        //(доработать)
        //void EditBook()
        public BookEntity GetBook(string title) => _libraryDAL.GetBookDAL(title);
        //(доработать)
        /*IEnumerable<BookEntity> GetBooks(bool oreredById = true)
        {
            
        }*/

    }
}
