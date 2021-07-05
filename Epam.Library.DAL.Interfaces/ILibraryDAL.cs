using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Epam.Library.Entities;

namespace Epam.Library.DAL.Interfaces
{
    public interface ILibraryDAL
    {
        bool AddUserDAL(UserEntity user);
        UserEntity GetUserDAL(int id);
        void EditUserDAL(string password, string type, string surname, string name, string patronymic, string gender, string dateOfBirth);

        bool AddBookDAL(BookEntity book);
        void RemoveBookDAL(int id);
        BookEntity GetBookDAL(string title);

    }
}
