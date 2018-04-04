#include <iostream>
#include <memory>
#include <gtest/gtest.h>

TEST(Simple, Main) {
    auto p = std::make_unique< int >( 10 );
    ASSERT_TRUE((*p) == 10);
}
