for i in *.jpg; do
    convert $i -set colorspace Gray "${i%.jpg}.gray.jpg"
done

