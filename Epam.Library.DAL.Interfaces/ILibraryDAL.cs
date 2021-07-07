using System;
using Epam.Library.Entities;

namespace Epam.Library.DAL.Interfaces
{
    public interface ILibraryDAL
    {
        bool Authentification(int id, string password);

        bool AddUserDAL(UserEntity user);
        object GetUserDAL(int id);
        object GetUserFullDAL(int id);
        object GetUsersDAL();
        void EditUserDAL(int id, string password, string type, string surname, string name, string patronymic, string birth);

        bool AddBookDAL(BookEntity book);
        object GetBooksDAL();
        object GetBookIDDAL(int id);
        object GetBookTitleDAL(string title);
        void RemoveBookDAL(int id);
        void EditBookDAL(int id, string title, string author, string edition, string editionYear, string place);
    }
}
