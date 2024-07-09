<!DOCTYPE html>
<html>
<head>
    <title>Indian Holiday Calendar</title>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.11.0/main.min.css' rel='stylesheet' />
    <style>
        #calendar {
            max-width: 900px;
            margin: 0 auto;
        }
    </style>
    
</head>
<body>
    <div id="calendar"></div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/6.1.14/index.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/6.1.14/index.global.js" ></script>
    
    <script> 
        var events = @json( $holidays);
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: events
            });
            calendar.render();
        });
    </script>
</body>
</html>
