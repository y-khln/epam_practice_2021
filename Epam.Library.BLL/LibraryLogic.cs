using System;
using Epam.Library.BLL.Interfaces;
using Epam.Library.Entities;
using Epam.Library.SqlDAL;

namespace Epam.Library.BLL
{
    public class LibraryLogic : ILibraryLogic
    {
        LibrarySqlDAL _libraryDAL = new LibrarySqlDAL();

        public bool Auth(int id, string password) => _libraryDAL.Authentification(id, password);
        //ПОЛЬЗОВАТЕЛИ
        //Подсчет общего числа пользователей
        public int Count() => _libraryDAL.CountDAL();
        //Добавить пользователя
        public bool AddUser(UserEntity user) => _libraryDAL.AddUserDAL(user);
        //Профиль пользователя по id упрощенный
        public object GetUser(int id) => _libraryDAL.GetUserDAL(id);
        //Профиль пользователя по id полный
        public object GetUserFull(int id) => _libraryDAL.GetUserFullDAL(id);
        //Список всех пользователей
        public object GetUsers() => _libraryDAL.GetUsersDAL();
        //Редактирование профиля пользователя
        public void EditUser(int id, string password, string type, string surname, string name, string patronymic, string birth)
        => _libraryDAL.EditUserDAL(id, password, type, surname, name, patronymic, birth);

        //КНИГИ
        //Добавить книгу в библиотеку
        public bool AddBook(BookEntity book) => _libraryDAL.AddBookDAL(book);
        //Получить все книги
        public object GetBooks() => _libraryDAL.GetBooksDAL();
        //Получить книгу по указанному id
        public object GetBookID(int id) => _libraryDAL.GetBookIDDAL(id);
        //Получить книги по названию
        public object GetBookTitle(string title) => _libraryDAL.GetBookTitleDAL(title);
        //Удалить книгу по указанному id
        public void RemoveBook(int id) => _libraryDAL.RemoveBookDAL(id);
        //Изменить книгу с указанным id
        public void EditBook(int id, string title, string author, string edition, string editionYear, string place) 
        => _libraryDAL.EditBookDAL(id,title, author, edition, editionYear, place);
    }
}
