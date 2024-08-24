.class public Lcom/android/camera/ui/SeekBarCompat$3;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SeekBarCompat;->announceForAccessibility(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/SeekBarCompat;

.field public final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/SeekBarCompat;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat$3;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat$3;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat$3;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat$3;->val$text:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/android/camera/ui/SeekBarCompat;->access$200(Lcom/android/camera/ui/SeekBarCompat;Ljava/lang/CharSequence;)V

    return-void
.end method
