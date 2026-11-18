.class public final Lteam/opay/pay/oshare/SharePlatformDialog$a;
.super Ljava/lang/Object;
.source "SharePlatformDialog.kt"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/oshare/SharePlatformDialog;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/RadioGroup;",
        "kotlin.jvm.PlatformType",
        "checkedId",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/oshare/SharePlatformDialog;


# direct methods
.method public constructor <init>(Lteam/opay/pay/oshare/SharePlatformDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 10

    .line 1
    sget p1, Lteam/opay/pay/oshare/R$id;->copy:I

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 6
    .line 7
    sget-object p2, Lteam/opay/pay/oshare/api/OSharePlatform;->Copy:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lteam/opay/pay/oshare/SharePlatformDialog;->B(Lteam/opay/pay/oshare/SharePlatformDialog;Lteam/opay/pay/oshare/api/OSharePlatform;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget p1, Lteam/opay/pay/oshare/R$id;->whatsapp:I

    .line 14
    .line 15
    if-ne p2, p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 18
    .line 19
    sget-object p2, Lteam/opay/pay/oshare/api/OSharePlatform;->WhatsApp:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lteam/opay/pay/oshare/SharePlatformDialog;->B(Lteam/opay/pay/oshare/SharePlatformDialog;Lteam/opay/pay/oshare/api/OSharePlatform;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget p1, Lteam/opay/pay/oshare/R$id;->facebook:I

    .line 26
    .line 27
    if-ne p2, p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 30
    .line 31
    sget-object p2, Lteam/opay/pay/oshare/api/OSharePlatform;->Facebook:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 32
    .line 33
    invoke-static {p1, p2}, Lteam/opay/pay/oshare/SharePlatformDialog;->B(Lteam/opay/pay/oshare/SharePlatformDialog;Lteam/opay/pay/oshare/api/OSharePlatform;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget p1, Lteam/opay/pay/oshare/R$id;->twitter:I

    .line 38
    .line 39
    if-ne p2, p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 42
    .line 43
    sget-object p2, Lteam/opay/pay/oshare/api/OSharePlatform;->Twitter:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 44
    .line 45
    invoke-static {p1, p2}, Lteam/opay/pay/oshare/SharePlatformDialog;->B(Lteam/opay/pay/oshare/SharePlatformDialog;Lteam/opay/pay/oshare/api/OSharePlatform;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    new-instance p1, Lteam/opay/pay/oshare/api/OShareData;

    .line 49
    .line 50
    iget-object p2, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 51
    .line 52
    invoke-static {p2}, Lteam/opay/pay/oshare/SharePlatformDialog;->A(Lteam/opay/pay/oshare/SharePlatformDialog;)Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/16 v8, 0x7a

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    const-string/jumbo v3, "\u8fd9\u662f\u4e00\u6761\u5206\u4eab\u6d88\u606f\u7684\u5185\u5bb9"

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v0, p1

    .line 68
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/oshare/api/OShareData;-><init>(Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    const-string p2, "http://news.sina.com.cn/c/2019-12-11/doc-iihnzahi6718565.shtml"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lteam/opay/pay/oshare/api/OShareData;->setContentUrl(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p2, "#\u8bfa\u8d1d\u5c14\u7269\u7406\u5b66\u5956"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lteam/opay/pay/oshare/api/OShareData;->setTag(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string p2, "/storage/emulated/0/Pictures/1565834419029.jpg"

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lteam/opay/pay/oshare/api/OShareData;->setImagePath(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object p2, Lefa;->a:Lefa;

    .line 87
    .line 88
    iget-object v0, p0, Lteam/opay/pay/oshare/SharePlatformDialog$a;->a:Lteam/opay/pay/oshare/SharePlatformDialog;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->s()V

    .line 97
    .line 98
    .line 99
    :cond_4
    const-string v1, "context!!"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lteam/opay/pay/oshare/SharePlatformDialog$a$a;

    .line 105
    .line 106
    invoke-direct {v1}, Lteam/opay/pay/oshare/SharePlatformDialog$a$a;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0, p1, v1}, Lefa;->a(Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lteam/opay/pay/oshare/adapter/ShareResultAdapter;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
