#include <iostream>
#include <memory>

int main()
{
    auto p = std::make_unique< int > ( 10 );
    std::cout << "p = " << *p.get() << std::endl;

    return 0;
}
