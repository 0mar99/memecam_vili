.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO0O0:I

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO00o:Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO0O0:I

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00O0O/OooO0o;->OooO0OO:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeProcess;->OooO00o(IZ)V

    return-void
.end method
