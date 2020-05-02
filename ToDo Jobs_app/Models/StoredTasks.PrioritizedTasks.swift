












extension StoredTasks {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension StoredTasks.PrioritizedTasks: Identifiable {
    var id: Task.Priority { priority }
}
