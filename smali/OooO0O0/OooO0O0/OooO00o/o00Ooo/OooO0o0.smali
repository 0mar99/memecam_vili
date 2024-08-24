.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field private final synthetic OooO00o:Landroid/content/Context;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:J

.field private final synthetic OooO0o:J

.field private final synthetic OooO0o0:Z

.field private final synthetic OooO0oO:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZJZJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0O0:Ljava/lang/String;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0OO:Z

    iput-wide p4, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0Oo:J

    iput-boolean p6, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0o0:Z

    iput-wide p7, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0o:J

    iput-boolean p9, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0oO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO00o:Landroid/content/Context;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0O0:Ljava/lang/String;

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0OO:Z

    iget-wide v3, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0Oo:J

    iget-boolean v5, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0o0:Z

    iget-wide v6, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0o:J

    iget-boolean v8, p0, LOooO0O0/OooO0O0/OooO00o/o00Ooo/OooO0o0;->OooO0oO:Z

    invoke-static/range {v0 .. v8}, Lcom/android/camera/storage/Storage;->OooO00o(Landroid/content/Context;Ljava/lang/String;ZJZJZ)V

    return-void
.end method
