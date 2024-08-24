.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/oooo00o/OooO00o/Oooo;->OooO00o:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-static {p0, p1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->OooO00o(Ljava/lang/Runnable;Lcom/android/camera/ActivityBase;)V

    return-void
.end method
