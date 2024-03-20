// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


document.addEventListener('DOMContentLoaded', function () {
    const departmentSelect = document.querySelector('#nubd_suggestion_department_id');
    const subjectSelect = document.querySelector('#nubd_suggestion_subject_id');

    departmentSelect.addEventListener('change', function () {
        const departmentId = this.value;

        fetch(`/departments/${departmentId}/subjects`)
            .then(response => response.json())
            .then(subjects => {
                // Clear existing options
                subjectSelect.innerHTML = '';

                // Populate subjects dropdown with new options
                subjects.forEach(subject => {
                    const option = document.createElement('option');
                    option.value = subject.id;
                    option.textContent = subject.name;
                    subjectSelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error fetching subjects:', error));
    });
});
