.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

.field private final synthetic OooO0O0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/resource/BaseObservableRequest;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;->OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;->OooO0O0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;->OooO00o:Lcom/android/camera/resource/BaseObservableRequest;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/Ooooooo/OooO0OO;->OooO0O0:Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/resource/BaseObservableRequest;->OooO00o(Ljava/lang/Class;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
