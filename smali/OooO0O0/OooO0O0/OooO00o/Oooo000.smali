.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo000;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo000;->OooO00o:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/camera/RotateDialogController;->OooO0O0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
