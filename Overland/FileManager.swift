import Foundation

// Checks if a file exsits
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
