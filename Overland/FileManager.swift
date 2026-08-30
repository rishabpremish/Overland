import Foundation

// Checks if a file or folder exsits
func checkFile(filePath: String) -> Bool {
    let fileManager = FileManager.default
    let exists = fileManager.fileExists(atPath: filePath)
    return exists
}

// Lists all the files in the directory
func listFilesInDirectory(directoryPath: String) -> [String]? {
    let fileManager = FileManager.default
    do {
        let files = try fileManager.contentsOfDirectory(atPath: directoryPath)
        return files
    } catch {
        print("Something went wrong")
    }
    return nil
}

// Prints files from a [String]
func printFiles(files: [String], fileType: String) {
    for file in files {
        print(file + " -> " + fileType)
    }
}
