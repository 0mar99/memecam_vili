.class public Lcom/miui/riskcontrol/SensitiveWordUtils;
.super Ljava/lang/Object;
.source "SensitiveWordUtils.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.riskcontrol"

.field public static final CALL_METHOD:Ljava/lang/String; = "METHOD_SENSITIVE_WORD_DETECT"

.field public static final KEY_RESULT_HAS_SENSITIVE_WORD:Ljava/lang/String; = "hasSensitiveWords"

.field public static final MATA_DATA_SUPPORT_FLAG:Ljava/lang/String; = "security.miui.support.text.detect"

.field public static final PKG_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final SENSITIVE_WORD_DETECT_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String; = "SWU"

.field public static mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.riskcontrol/censorResult"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/riskcontrol/SensitiveWordUtils;->SENSITIVE_WORD_DETECT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/miui/riskcontrol/SensitiveWordUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sput-object p0, Lcom/miui/riskcontrol/SensitiveWordUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    :cond_1
    :try_start_0
    sget-object p0, Lcom/miui/riskcontrol/SensitiveWordUtils;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/riskcontrol/SensitiveWordUtils;->SENSITIVE_WORD_DETECT_URI:Landroid/net/Uri;

    const-string v2, "METHOD_SENSITIVE_WORD_DETECT"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "hasSensitiveWords"

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception p0

    const-string p1, "SWU"

    const-string v1, "detect: "

    .line 6
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.miui.securitycenter"

    const/16 v2, 0x80

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "security.miui.support.text.detect"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method
