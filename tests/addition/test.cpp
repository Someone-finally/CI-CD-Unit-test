#include "CppUTest/TestHarness.h"

extern "C"{
		#include "addition.h"
}

TEST_GROUP(addition_test_group)
{
	void setup()
	{
		// Initialise before each test
	}
	
	void teardown()
	{
	     // Deinitialisation after each test 
	}
};

//Test the addition_test_group
TEST(addition_test_group, null_test)
{
	float array[1];
	float addi = addition(array,0);
	CHECK_EQUAL(addi,0.0);
}
