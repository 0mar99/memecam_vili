.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooOO0;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooOO0;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    invoke-virtual {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->hiddenPlayButton()V

    return-void
.end method
