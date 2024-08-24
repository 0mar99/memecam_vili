.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000OO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000OO/OooO0o;->OooO00o:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o000OO/OooO0o;->OooO00o:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;->OooO00o(Landroid/util/SparseArray;Lcom/android/camera/dualvideo/recorder/MiRecorder;)V

    return-void
.end method
