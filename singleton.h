#include <memory>
#include <iostream>
using namespace std;

class Singleton {
  public:
    static Singleton * Instance() {
      if( 0== _instance.get())
        _instance.reset( new Singleton);

      return _instance.get();
    }

  protected:
    Singleton(void) {
      cout <<"Create Singleton"<<endl;
    }

    virtual ~Singleton(void) {
      cout << "Destroy Singleton"<<endl;
    }
    friend class auto_ptr<Singleton>;
    static auto_ptr<Singleton> _instance;
};
