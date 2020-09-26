<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\NotificationResource;

class NotificationController extends Controller
{
    public function index()
    {
        return [
            'read' => NotificationResource::collection(auth()->user()->readNotifications),
            'unRead' => NotificationResource::collection(auth()->user()->unreadNotifications)
        ];
    }

    public function markAsread(Request $request)
    {
        return auth()->user()->notifications->where('id', $request->id)->markAsRead();
    }
}
