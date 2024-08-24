.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/view/ViewStub;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0O0;->OooO00o:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooO0O0;->OooO00o:Landroid/view/ViewStub;

    invoke-static {p0}, Lcom/android/camera/fragment/AsyncInflaterManager;->OooO00o(Landroid/view/ViewStub;)V

    return-void
.end method
