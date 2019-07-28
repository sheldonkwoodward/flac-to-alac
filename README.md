# FLAC to ALAC
A simple script that utilizes ffmpeg to convert FLAC files to ALAC losslessly while preserving metadata. The idea is that this script will convert one album at a time to ALAC. It assumes that there is artwork embedded in the files. There is a commented line that will also embed the album artwork in each output file for those who would like.

## Usage
The script takes two arguments, the source FLAC directory and the destination ALAC directory. The ALAC directory will be created if it does not exist. All files with the `.flac` extension will be read from the FLAC directory. Run the script like so:

```
$ ./flac-to-alac.sh /path/to/source/album /path/to/output
```

Note that the paths passed in **should not have a trailing slash**, this is a primitive script so treat it so.
