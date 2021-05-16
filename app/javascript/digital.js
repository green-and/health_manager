window.addEventListener('load', function(){

  const digitalInput = document.getElementById("digital-input");
  digitalInput.addEventListener('input', () => {
    const inputValue = digitalInput.value;

    const digitalGoal = document.getElementById("digital-goal");
    const digitalAchievement = document.getElementById("digital-achievement");
    digitalAchievement.innerHTML = (digitalGoal.textContent - inputValue);
  })
})