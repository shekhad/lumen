from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Event, TicketType, Booking
from .forms import BookingForm


def event_list(request):
    events = Event.objects.all()
    return render(request, 'home.html', {'events': events})


def event_detail(request, pk):
    event = get_object_or_404(Event, pk=pk)
    return render(request, 'event_detail.html', {'event': event})


@login_required
def book_ticket(request, pk):
    event = get_object_or_404(Event, pk=pk)
    form = BookingForm()

    if request.method == 'POST':
        form = BookingForm(request.POST)
        if form.is_valid():
            ticket_type = form.cleaned_data['ticket_type']
            quantity = form.cleaned_data['quantity']
            if event.ticket_types.filter(id=ticket_type.id).exists():
                booking = Booking.objects.create(user=request.user, ticket_type=ticket_type, quantity=quantity)
                messages.success(request, f'Thank you for booking {quantity} x {ticket_type.name} tickets!')
                return redirect('event_detail', pk=event.pk)
            else:
                messages.error(request, f'Invalid ticket type selected!')
    
    return render(request, 'book_ticket.html', {'event': event, 'form': form})
