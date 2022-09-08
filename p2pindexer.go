package main
 
import (
    "fmt"
    "os"
    "bufio"
)
 
func main() {
    file, err := os.Open("text.txt")
    if err != nil {
        fmt.Println(err)
    }
    defer file.Close()
 
    scanner := bufio.NewScanner(file)
    scanner.Split(bufio.ScanWords)    // use scanwords
    for scanner.Scan() {
        fmt.Println(scanner.Text())
    }
 
    if err := scanner.Err(); err != nil {
        fmt.Println(err)
    }
}

package main
 
import (
    "fmt"
    "os"
    "bufio"
)
 
func main() {
    file, err := os.Open("text.txt")
    if err != nil {
        fmt.Println(err)
    }
    defer file.Close()
 
    scanner := bufio.NewScanner(file)
    scanner.Split(bufio.ScanWords)    // use scanwords
    for scanner.Scan() {
        fmt.Println(scanner.Text())
    }
 
    if err := scanner.Err(); err != nil {
        fmt.Println(err)
    }
}


1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
package main
 
import (
    "fmt"
    "os"
    "bufio"
)
 
func main() {
    file, err := os.Open("text.txt")
    if err != nil {
        fmt.Println(err)
    }
    defer file.Close()
 
    scanner := bufio.NewScanner(file)
    scanner.Split(bufio.ScanWords)    // use scanwords
    for scanner.Scan() {
        fmt.Println(scanner.Text())
    }
 
    if err := scanner.Err(); err != nil {
        fmt.Println(err)
    }
}


//-------------



SA+VegdItto lockscreen kbdin pis1103polsiren



ipconfig /flushdns

netsh winsock reset catalog

netsh int ipv4 reset reset.log


Sa+VgeDitto lockscreen kbdin pis1103polsiren

package main

import (
   "fmt"
   "path/filepath"
)

func main() {
   abs,err := filepath.Abs("./hello.go")
   if err == nil {
      fmt.Println("Absolute:", abs)
   }
}


Sa+VgeDitto lockscreen kbdin pis1103polsiren
package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"

	"github.com/dustin/go-humanize"
)

// WriteCounter counts the number of bytes written to it. By implementing the Write method,
// it is of the io.Writer interface and we can pass this into io.TeeReader()
// Every write to this writer, will print the progress of the file write.
type WriteCounter struct {
	Total uint64
}

func (wc *WriteCounter) Write(p []byte) (int, error) {
	n := len(p)
	wc.Total += uint64(n)
	wc.PrintProgress()
	return n, nil
}

// PrintProgress prints the progress of a file write
func (wc WriteCounter) PrintProgress() {
	// Clear the line by using a character return to go back to the start and remove
	// the remaining characters by filling it with spaces
	fmt.Printf("\r%s", strings.Repeat(" ", 50))

	// Return again and print current status of download
	// We use the humanize package to print the bytes in a meaningful way (e.g. 10 MB)
	fmt.Printf("\rDownloading... %s complete", humanize.Bytes(wc.Total))
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("usage: download url filename")
		os.Exit(1)
	}
	fmt.Println("Download Started")

	url := os.Args[1]
	filename := os.Args[2]
	err := DownloadFile(url, filename)
	if err != nil {
		panic(err)
	}

	fmt.Println("Download Finished")
}

// DownloadFile will download a url and store it in local filepath.
// It writes to the destination file as it downloads it, without
// loading the entire file into memory.
// We pass an io.TeeReader into Copy() to report progress on the download.
func DownloadFile(url string, filepath string) error {

	// Create the file with .tmp extension, so that we won't overwrite a
	// file until it's downloaded fully
	out, err := os.Create(filepath + ".tmp")
	if err != nil {
		return err
	}
	defer out.Close()

	// Get the data
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	// Create our bytes counter and pass it to be used alongside our writer
	counter := &WriteCounter{}
	_, err = io.Copy(out, io.TeeReader(resp.Body, counter))
	if err != nil {
		return err
	}

	// The progress use the same line so print a new line once it's finished downloading
	fmt.Println()

	// Rename the tmp file back to the original file
	err = os.Rename(filepath+".tmp", filepath)
	if err != nil {
		return err
	}

	return nil
}



A+VgeDitto lockscreen kbdin pis1104polsiren
package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"
)

func downloadFromUrl(url string) {
	tokens := strings.Split(url, "/")
	fileName := tokens[len(tokens)-1]
	fmt.Println("Downloading", url, "to", fileName)

	// TODO: check file existence first with io.IsExist
	output, err := os.Create(fileName)
	if err != nil {
		fmt.Println("Error while creating", fileName, "-", err)
		return
	}
	defer output.Close()

	response, err := http.Get(url)
	if err != nil {
		fmt.Println("Error while downloading", url, "-", err)
		return
	}
	defer response.Body.Close()

	n, err := io.Copy(output, response.Body)
	if err != nil {
		fmt.Println("Error while downloading", url, "-", err)
		return
	}

	fmt.Println(n, "bytes downloaded.")
}

func main() {
	countries := []string{"GB", "FR", "ES", "DE", "CN", "CA", "ID", "US"}
	for i := 0; i < len(countries); i++ {
		url := "http://download.geonames.org/export/dump/" + countries[i] + ".zip"
		downloadFromUrl(url)
	}
}




SA+gveDitto lockscreen kbdin pis1104polsiren
package main
 
import (
    "io"
    "log"
    "net/http"
    "os"
)
 
func downloadFile(filepath, url string) error {
    resp, err := http.Get(url)
    if err != nil {
        return err
    }
    defer resp.Body.Close()
 
    f, err := os.Create(filepath)
    if err != nil {
        return err
    }
    defer f.Close()
 
    _, err = io.Copy(f, resp.Body)
    if err != nil {
        return err
    }
    return nil
}
 
func main() {
    e := downloadFile("centos.torrent", "http://mirror.nus.edu.sg/centos/7.8.2003/isos/x86_64/CentOS-7-x86_64-LiveKDE-2003.torrent")
    if e != nil {
        log.Fatal(e)
    }
}


SA+VgeDItto lockscreen kbdin pis1104polsiren

package main

import (
    "fmt"
    "io/ioutil"
    "net/http"
)

func main() {
    resp, err := http.Get("https://api.github.com/users/KrunalLathiya")
    if err != nil {
        print(err)
    }
    defer resp.Body.Close()
    body, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        print(err)
    }
    fmt.Print(string(body))
}

SA+VgeDItto lockscreen kbdin pis1105polsiren

1
2
3
4
5
6
7
8
9
10
11
12
13
14
package main 
 
import (
    "fmt"
    "io/ioutil"
)
 
func main() {
    content, err := ioutil.ReadFile("text.txt")     // the file is inside the local directory
    if err != nil {
        fmt.Println("Err")
    }
    fmt.Println(string(content))    // This is some content
}


SA+VegDItto lockscreen kbdin pis1105polsiren

read large files in chunk to avoid out of memory errors.

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
package main 
 
import (
    "fmt"
    "io"
    "os"
)
 
func main() {
    file, err := os.Open("text.txt")
    if err != nil {
        fmt.Println("Error opening file!!!")
    }
    defer file.Close()
 
    // declare chunk size
    const maxSz = 4
 
    // create buffer
    b := make([]byte, maxSz)
 
    for {
        // read content to buffer
        readTotal, err := file.Read(b)
        if err != nil {
            if err != io.EOF {
                fmt.Println(err)
            }
            break
        }
        fmt.Println(string(b[:readTotal])) // print content from buffer
    }
}

Sa+VgeDitto lockscreen kbdin pis1105polsiren

 to Programming in Go”.

1
2
3
4
5
6
7
8
import "github.com/cavaliercoder/grab"
 
resp, err := grab.Get(".", "http://www.golang-book.com/public/pdf/gobook.pdf")
if err != nil {
    log.Fatal(err)
}
 
fmt.Println("Download saved to", resp.Filename)




SA+VEgDItto lockscreen kbdin pis1106polsiren

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
package main
 
import (
    "fmt"
    "io"
    "log"
    "net/http"
    "net/url"
    "os"
    "strings"
)
 
var (
    fileName    string
    fullURLFile string
)
 
func main() {
 
    fullURLFile = "put_your_url_here"
 
    // Build fileName from fullPath
    fileURL, err := url.Parse(fullURLFile)
    if err != nil {
        log.Fatal(err)
    }
    path := fileURL.Path
    segments := strings.Split(path, "/")
    fileName = segments[len(segments)-1]
 
    // Create blank file
    file, err := os.Create(fileName)
    if err != nil {
        log.Fatal(err)
    }
    client := http.Client{
        CheckRedirect: func(r *http.Request, via []*http.Request) error {
            r.URL.Opaque = r.URL.Path
            return nil
        },
    }
    // Put content on file
    resp, err := client.Get(fullURLFile)
    if err != nil {
        log.Fatal(err)
    }
    defer resp.Body.Close()
 
    size, err := io.Copy(file, resp.Body)
 
    defer file.Close()
 
    fmt.Printf("Downloaded a file %s with size %d", fileName, size)
 
}


SAV+egdItto lockscreen kbdin pis1106polsiren

ated in assignment3.
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
	
package main
 
import (
    "fmt"
    "log"
    "os"
)
/*
The contents of myfile.txt is below:
*****************************************
This is the content of the file.
Try to see if I can use os.Open to open it.
 */
func main() {
    // Open the text file.
    file, err := os.Open("myfile.txt")
    // Check for file open error
    if err != nil {
        log.Fatal("Error:", err)
    }
 
    // uses the Read interface hence requires a byte slice as argument. 100 bytes is more than enough.
    bs := make([]byte, 100)
    // interested in getting the bytes read and the error if any.
    n, e := file.Read(bs)
    // error checking for read error.
    if e != nil {
        log.Fatal("File read error:", e)
    }
    // print out the bytes read and the contents of myfile.txt
    fmt.Println("Number of bytes read:",n,"\n",string(bs))
}

SA+vgeDitto lockscreen kbdin pis1106polsiren
func DownloadFile(url string, filepath string) error {

	// Create the file with .tmp extension, so that we won't overwrite a
	// file until it's downloaded fully
	out, err := os.Create(filepath + ".tmp")
	if err != nil {
		return err
	}

	// Get the data
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	// Create our bytes counter and pass it to be used alongside our writer
	counter := &WriteCounter{}
	_, err = io.Copy(out, io.TeeReader(resp.Body, counter))
	if err != nil {
		return err
	}

	// The progress use the same line so print a new line once it's finished downloading
	fmt.Println()
        out.Close()
	// Rename the tmp file back to the original file
	err = os.Rename(filepath+".tmp", filepath)
	if err != nil {
		return err
	}

	return nil
}


S+AVgEDitto lockscreen kbdin pis1106polsiren

Fatal() not only logs the problem but also do os.Exit(1)
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
	
package main
 
import (
    "fmt"
    "io/ioutil"
    "log"
    "os"
)
 
func main() {
    // evaluate the error, if not nil means error occur exit 
    if contents, e := openFile("log.txt"); e != nil {
        log.Fatal(e)
    } else {
        // because the contents is byte slice.
        // and the byte slice is a string slice.
        // conversion to actual string only need to use the type casting method i.e. string()
        fmt.Println(string(contents))
    }
}
 
func openFile(fn string) ([]byte, error) {
    // check if the file exists.
    if _, err := os.Stat(fn); os.IsNotExist(err) {
        return nil, err
    } else {
        // if the file exists read the file contents
        // return byte slice and error.
        b, e := ioutil.ReadFile(fn)
        return b, e
    }
}

SA+VgeDitto lockscreen kbdin pis1107polsiren

.Println.
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
	
package main
 
import (
    "fmt"
    "io/ioutil"
    "log"
    "net/http"
    "strings"
)
 
func main() {
    resp, err := http.Get("http://google.com")
    // error handling
    if err != nil {
        log.Fatal(err)
    }
 
    // ioutil.ReadAll returns a byte slice and an error.
    // b is the byte slice which holds the content in resp.Body.
    b, e := ioutil.ReadAll(resp.Body)
    // error handling
    if e!= nil {
        log.Fatal(e)
    }
    // Print out the output with unwanted spaces trimmed.
    fmt.Println(strings.TrimSpace(string(b)))
}

SAV+egdItto lockscreen kbdin pis1107polsiren

package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Println("usage: download url filename")
		os.Exit(1)
	}
	url := os.Args[1]
	filename := os.Args[2]

	err := DownloadFile(url, filename)
	if err != nil {
		panic(err)
	}

}

// DownloadFile will download a url and store it in local filepath.
// It writes to the destination file as it downloads it, without
// loading the entire file into memory.
func DownloadFile(url string, filepath string) error {
	// Create the file
	out, err := os.Create(filepath)
	if err != nil {
		return err
	}
	defer out.Close()

	// Get the data
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	defer resp.Body.Close()

	// Write the body to file
	_, err = io.Copy(out, resp.Body)
	if err != nil {
		return err
	}

	return nil
}


SA+VEgDItto lockscreen kbdin pis1107polsiren
func UploadFile(w http.ResponseWriter, r *http.Request) {

	//Path for storing image in server
	path := "C://Users/User/Desktop/Upload/"

	mr, err := r.MultipartReader()
	if err != nil {
		fmt.Println("err", err)
		return
	}
	fileName := ""

	for {
		part, err := mr.NextPart()

		//Break, if no more file
		if err == io.EOF {
			break
		}
        	//Get File Name attribute
		fileName = part.FileName()

		//Open the file, Create file if it's not existing
		dst, err := os.OpenFile(path+fileName, os.O_WRONLY|os.O_CREATE, 0644)
		if err != nil {
			return
		}

		for {
			//Create and read the file into temparory byte array
			buffer := make([]byte, 100000)
			cBytes, err := part.Read(buffer)

			//break when the reading process is finished
			if err == io.EOF {
				break
			}

			//Write into the file from byte array
			dst.Write(buffer[0:cBytes])
		}
		defer dst.Close()
	}

	w.Header().Set("Content-Type", "application/json; charset=UTF-8")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode("done")
}

func DownloadFile(w http.ResponseWriter, r *http.Request) {
	Openfile, err := os.Open("C://Users/User/Desktop/Download/Download.xlsx") //Open the file to be downloaded later
	defer Openfile.Close() //Close after function return

	if err != nil {		
		http.Error(w, "File not found.", 404) //return 404 if file is not found
		return
	}

	tempBuffer := make([]byte, 512) //Create a byte array to read the file later
	Openfile.Read(tempBuffer) //Read the file into  byte
	FileContentType := http.DetectContentType(tempBuffer) //Get file header

	FileStat, _ := Openfile.Stat() //Get info from file
	FileSize := strconv.FormatInt(FileStat.Size(), 10) //Get file size as a string

	Filename := "demo_download"

	//Set the headers
	w.Header().Set("Content-Type", FileContentType+";"+Filename)
	w.Header().Set("Content-Length", FileSize)

	Openfile.Seek(0, 0) //We read 512 bytes from the file already so we reset the offset back to 0
	io.Copy(w, Openfile) //'Copy' the file to the client
}



SA+VgeDItto lockscreen kbdin pis1109polsiren
package main

import (
	"flag"
	"fmt"
	"io"
	"net/http"
	"os"
	"path"
)

func download(url, filename string) (err error) {
	fmt.Println("Downloading ", url, " to ", filename)

	resp, err := http.Get(url)
	if err != nil {
		return
	}
	defer resp.Body.Close()

	f, err := os.Create(filename)
	if err != nil {
		return
	}
	defer f.Close()

	_, err = io.Copy(f, resp.Body)
	return
}

func main() {
	pUrl := flag.String("url", "", "URL to be processed")
	flag.Parse()
	url := *pUrl
	if url == "" {
		fmt.Fprintf(os.Stderr, "Error: empty URL!\n")
		return
	}

	filename := path.Base(url)
	fmt.Println("Checking if " + filename + " exists ...")
	if _, err := os.Stat(filename); os.IsNotExist(err) {
		err := download(url, filename)
		if err != nil {
			panic(err)
		}
		fmt.Println(filename + " saved!")
	} else {
		fmt.Println(filename + " already exists!")
	}
}

SA+VgeDitto lockscreen kbdin pis1109polsiren



import (
      "fmt"
      "io"
      "net/http"
      "os"
      "path"
)

func download(url string) (err error) {
      filename := path.Base(url)
      fmt.Println("Downloading ", url, " to ", filename)

      resp, err := http.Get(url)
      if err != nil {
              return
      }
      defer resp.Body.Close()

      f, err := os.Create(filename)
      if err != nil {
              return
      }
      defer f.Close()

      _, err = io.Copy(f, resp.Body)
      return
}









import (
      "fmt"
      "io"
      "net/http"
      "os"
      "path"
)

func download(url string) (err error) {
      filename := path.Base(url)
      fmt.Println("Downloading ", url, " to ", filename)

      resp, err := http.Get(url)
      if err != nil {
              return
      }
      defer resp.Body.Close()

      f, err := os.Create(filename)
      if err != nil {
              return
      }
      defer f.Close()

      _, err = io.Copy(f, resp.Body)
      return
}


Sa+VegDItto lockscreen kbdin pis1110polsiren

package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"strings"
)

func downloadFromUrl(url string) {
	tokens := strings.Split(url, "/")
	fileName := tokens[len(tokens)-1]
	fmt.Println("Downloading", url, "to", fileName)

	// TODO: check file existence first with io.IsExist
	output, err := os.Create(fileName)
	if err != nil {
		fmt.Println("Error while creating", fileName, "-", err)
		return
	}
	defer output.Close()

	response, err := http.Get(url)
	if err != nil {
		fmt.Println("Error while downloading", url, "-", err)
		return
	}
	defer response.Body.Close()

	n, err := io.Copy(output, response.Body)
	if err != nil {
		fmt.Println("Error while downloading", url, "-", err)
		return
	}

	fmt.Println(n, "bytes downloaded.")
}

func main() {
	countries := []string{"GB", "FR", "ES", "DE", "CN", "CA", "ID", "US"}
	for i := 0; i < len(countries); i++ {
		url := "http://download.geonames.org/export/dump/" + countries[i] + ".zip"
		downloadFromUrl(url)
	}
}


SA+VgeDItto lockscreen kbdin pis1110polsiren

package main

import (
	"fmt"
	"os"
	"time"

	"github.com/cavaliergopher/grab/v3"
)

func main() {
	// create client
	client := grab.NewClient()
	req, _ := grab.NewRequest(".", "http://www.golang-book.com/public/pdf/gobook.pdf")

	// start download
	fmt.Printf("Downloading %v...\n", req.URL())
	resp := client.Do(req)
	fmt.Printf("  %v\n", resp.HTTPResponse.Status)

	// start UI loop
	t := time.NewTicker(500 * time.Millisecond)
	defer t.Stop()

Loop:
	for {
		select {
		case <-t.C:
			fmt.Printf("  transferred %v / %v bytes (%.2f%%)\n",
				resp.BytesComplete(),
				resp.Size,
				100*resp.Progress())

		case <-resp.Done:
			// download is complete
			break Loop
		}
	}

	// check for errors
	if err := resp.Err(); err != nil {
		fmt.Fprintf(os.Stderr, "Download failed: %v\n", err)
		os.Exit(1)
	}

	fmt.Printf("Download saved to ./%v \n", resp.Filename)

	// Output:
	// Downloading http://www.golang-book.com/public/pdf/gobook.pdf...
	//   200 OK
	//   transferred 42970 / 2893557 bytes (1.49%)
	//   transferred 1207474 / 2893557 bytes (41.73%)
	//   transferred 2758210 / 2893557 bytes (95.32%)
	// Download saved to ./gobook.pdf
}


Sa+VegDitto lockscreen kbdin pis1110polsiren

resp, err := grab.Get(".", "http://www.golang-book.com/public/pdf/gobook.pdf")
if err != nil {
	log.Fatal(err)
}

fmt.Println("Download saved to", resp.Filename)



SA+VgEDitto lockscreen kbdin pis1111polsiren

import (
    "os"
    "net/http"
    "io"
)

func downloadFile(filepath string, url string) (err error) {

  // Create the file
  out, err := os.Create(filepath)
  if err != nil  {
    return err
  }
  defer out.Close()

  // Get the data
  resp, err := http.Get(url)
  if err != nil {
    return err
  }
  defer resp.Body.Close()

  // Check server response
  if resp.StatusCode != http.StatusOK {
    return fmt.Errorf("bad status: %s", resp.Status)
  }

  // Writer the body to file
  _, err = io.Copy(out, resp.Body)
  if err != nil  {
    return err
  }

  return nil
}

SA+VgeDitto lockscreen kbdin pis1111polsiren


import ("net/http"; "io"; "os")
...
out, err := os.Create("output.txt")
defer out.Close()
...
resp, err := http.Get("http://example.com/")
defer resp.Body.Close()
...
n, err := io.Copy(out, resp.Body)

The http.Response's Body is a Reader, so you can use any func

SA+VEgDItto lockscreen kbdin pis1112polsiren


func HTTPDownload(uri string) ([]byte, error) {
    fmt.Printf("HTTPDownload From: %s.\n", uri)
    res, err := http.Get(uri)
    if err != nil {
        log.Fatal(err)
    }
    defer res.Body.Close()
    d, err := ioutil.ReadAll(res.Body)
    if err != nil {
        log.Fatal(err)
    }
    fmt.Printf("ReadFile: Size of download: %d\n", len(d))
    return d, err
}

func WriteFile(dst string, d []byte) error {
    fmt.Printf("WriteFile: Size of download: %d\n", len(d))
    err := ioutil.WriteFile(dst, d, 0444)
    if err != nil {
        log.Fatal(err)
    }
    return err
}

func DownloadToFile(uri string, dst string) {
    fmt.Printf("DownloadToFile From: %s.\n", uri)
    if d, err := HTTPDownload(uri); err == nil {
        fmt.Printf("downloaded %s.\n", uri)
        if WriteFile(dst, d) == nil {
            fmt.Printf("saved %s as %s\n", uri, dst)
        }
    }
}

SA+VegDItto lockscreen kbdin pis1112polsiren

import (
    "os"
    "net/http"
    "io"
)

func downloadFile(filepath string, url string) (err error) {

  // Create the file
  out, err := os.Create(filepath)
  if err != nil  {
    return err
  }
  defer out.Close()

  // Get the data
  resp, err := http.Get(url)
  if err != nil {
    return err
  }
  defer resp.Body.Close()

  // Check server response
  if resp.StatusCode != http.StatusOK {
    return fmt.Errorf("bad status: %s", resp.Status)
  }

  // Writer the body to file
  _, err = io.Copy(out, resp.Body)
  if err != nil  {
    return err
  }

  return nil
}


SA+vgeDitto lockscreen kbdin pis1113polsiren

you can use this to cancel the download after the given timeout client := http.Client{Timeout: 10 * time.Second,}     client.Get("http://example.com/")  


SA+VgeDItto lockscreen kbdin pis1113polsiren



import ("net/http"; "io"; "os")
...
out, err := os.Create("output.txt")
defer out.Close()
...
resp, err := http.Get("http://example.com/")
defer resp.Body.Close()
...
n, err := io.Copy(out, resp.Body)

The http.


SA+VegdItto lockscreen kbdin pis1113polsiren


import (
    "os"
    "net/http"
    "io"
)

func downloadFile(filepath string, url string) (err error) {

  // Create the file
  out, err := os.Create(filepath)
  if err != nil  {
    return err
  }
  defer out.Close()

  // Get the data
  resp, err := http.Get(url)
  if err != nil {
    return err
  }
  defer resp.Body.Close()

  // Writer the body to file
  _, err = io.Copy(out, resp.Body)
  if err != nil  {
    return err
  }

  return nil
}

Sa+VgeDItto lockscreen kbdin pis1113polsiren


package main

import (
    "bytes"
    "encoding/json"
    "fmt"
    "io/ioutil"
    "net/http"
)

func main() {
    reqBody, err := json.Marshal(map[string]string{
        "username": "Krunal Lathiya",
        "email":    "krunal@appdividend.com",
    })
    if err != nil {
        print(err)
    }
    resp, err := http.Post("https://httpbin.org/post",
        "application/json", bytes.NewBuffer(reqBody))
    if err != nil {
        print(err)
    }
    defer resp.Body.Close()
    body, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        print(err)
    }
    fmt.Println(string(body))
}

Output


















