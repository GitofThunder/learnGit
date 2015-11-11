#include <iostream>

using namespace std;

class Person
{
public:
	Person(string name)
	{
		m_name = name;
	}
	virtual void show()
	{
		if(name.size())
			cout << name << endl;
	}
private:
	string m_name;
};

class Finery : public Person
{
public:
	Finery(Person person)
	{
		m_person(person);
	}
	virtual void show()
	{	
		if (m_person) 
		{
			m_person.show();
		}
	}
private:
	Person m_person;
};

class TShirt : public Finery
{
public:
	TShirt(Person person)
	{
		
	}
	virtual void show() override
	{
		Finery::show();
		cout << "TShirt" << endl;
	}
};

class Skirt : public Finery
{
public:
	Skirt(Person person)
	{}
	virtual void show() override
	{
		Finery::show();
		cout << "Skirt" << endl;
	}
};

int main(int argc, char** argv)
{
	if (argc != 2)
	{
		cout << "right type is ./zhuangshi ***" << endl;
		return -1;
	}
	
	string name(argv[1]);
	if(name.size())
	{
		Person person(name);
		TShirt ts(person);
		Skirt s(ts);
		ts.show();
	}
	return 1;
}
//没什么用，需要用指针，而不是用对象
