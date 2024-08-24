.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o0OO00O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/FilmDreamModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/FilmDreamModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0OO00O;->OooO00o:Lcom/android/camera/module/FilmDreamModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0OO00O;->OooO00o:Lcom/android/camera/module/FilmDreamModule;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/FilmDreamModule;->OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
