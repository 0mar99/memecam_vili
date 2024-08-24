.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic OooO00o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOo0;->OooO00o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooOo0;->OooO00o:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->OooO00o(Landroid/content/Context;I)V

    return-void
.end method
