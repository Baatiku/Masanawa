.class public interface abstract Lteam/opay/business/push/core/biz/IMessageClick;
.super Ljava/lang/Object;
.source "IMessageClick.kt"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/push/core/biz/IMessageClick$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000 \t2\u00020\u0001:\u0001\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/business/push/core/biz/IMessageClick;",
        "Lteam/opay/KeepNoProguard;",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/business/push/core/api/PushMessage;",
        "message",
        "",
        "onClick",
        "(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;)V",
        "Companion",
        "a",
        "business-push-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/business/push/core/biz/IMessageClick$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/push/core/biz/IMessageClick$a;->a:Lteam/opay/business/push/core/biz/IMessageClick$a;

    .line 2
    .line 3
    sput-object v0, Lteam/opay/business/push/core/biz/IMessageClick;->Companion:Lteam/opay/business/push/core/biz/IMessageClick$a;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/content/Context;Lteam/opay/business/push/core/api/PushMessage;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/push/core/api/PushMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
