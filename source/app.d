import std.stdio: write, writeln;
import std.algorithm: sort;
import std.file: read;
import std.array: split;
import std.conv: to;

void main()
{
	char[][] data = (cast(char[])read("data.txt")).split("\r\n");
	for(int i = 0; i < data.length; i++){
		int triads = data[i].to!int();
		for(int tg = 0; tg < triads; tg++){
			int[] numerdata = data[i+1..i+4].to!(int[])();
			write((numerdata.sort!("a < b"))[1], ' ');
			i += 3;
		}
		writeln();
	}
}
