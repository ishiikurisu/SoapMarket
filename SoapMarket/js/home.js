function NewJqueryTask(taskTitle) {
    taskName = $('<p class="task">' + taskTitle + '</p>');
    taskName.click(function () {
        $(this).css({
            "text-decoration": "line-through"
        });
    });
    return taskName;
}

$(document).ready(function () {
    $("#button-add-task").click(function () {
        taskTitle = $("input[name=task]").val();
        taskName = NewJqueryTask(taskTitle);
        taskColumn = $("<div/>", {
            "class": "col"
        });
        taskColumn.append(taskName);
        task = $('<div class="row"></div>');
        task.append(taskColumn);
        task.appendTo("#container-tasks");
    });
});
