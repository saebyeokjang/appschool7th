// DOM 요소들을 미리 저장
const todoListElement = document.getElementById('todoList');
const addButton = document.getElementById('addTodo');
const todoInput = document.getElementById('todoInput');

function addTodo(text, checked = false) {
    // li 요소 만들기
    const li = document.createElement('li');
    li.textContent = text;
    li.classList.add('list-group-item');

    // 체크박스 만들기
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.classList.add('form-check-input');
    checkbox.checked = checked;

    // 체크박스 상태에 따라 취소선 처리
    li.style.textDecoration = checked ? 'line-through' : 'none';

    // 체크박스 클릭시 처리
    checkbox.addEventListener('change', () => {
        li.style.textDecoration = checkbox.checked ? 'line-through' : 'none';

        // localStorage 업데이트
        const todos = loadTodos();
        const index = Array.from(li.parentElement.children).indexOf(li);
        todos[index].checked = checkbox.checked;
        saveTodos(todos);
    });

    li.prepend(checkbox);
    todoListElement.append(li);
}

// localStorage에서 할일 목록 가져오기
function loadTodos() {
    const savedTodos = localStorage.getItem('todoList');
    return savedTodos ? JSON.parse(savedTodos) : [];
}

// localStorage에 할일 목록 저장하기
function saveTodos(todos) {
    localStorage.setItem('todoList', JSON.stringify(todos));
}

// 초기화 함수
function initialize() {
    // 저장된 할일 목록 불러오기
    const todos = loadTodos();
    todos.forEach(todo => {
        addTodo(todo.text, todo.checked);
    });

    // 새로운 할일 추가 버튼 클릭 이벤트
    addButton.addEventListener('click', () => {
        if (todoInput.value.trim() === '') return; // 빈 입력 방지

        // 새로운 할일 추가
        addTodo(todoInput.value);

        // localStorage 업데이트
        const todos = loadTodos();
        todos.push({ text: todoInput.value, checked: false });
        saveTodos(todos);

        // 입력창 비우기
        todoInput.value = '';
    });
}

// 페이지 로드시 초기화
document.addEventListener('DOMContentLoaded', initialize);