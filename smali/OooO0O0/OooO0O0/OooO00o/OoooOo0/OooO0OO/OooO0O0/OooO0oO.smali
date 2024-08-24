.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mode/capture/CaptureModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/capture/CaptureModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0oO;->OooO00o:Lcom/android/camera/features/mode/capture/CaptureModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0OO/OooO0O0/OooO0oO;->OooO00o:Lcom/android/camera/features/mode/capture/CaptureModule;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->resetToIdleNoKeep(Z)V

    return-void
.end method
