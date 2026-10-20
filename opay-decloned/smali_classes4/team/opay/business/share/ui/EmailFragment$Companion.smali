.class public final Lteam/opay/business/share/ui/EmailFragment$Companion;
.super Ljava/lang/Object;
.source "EmailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/share/ui/EmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/business/share/ui/EmailFragment$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "templateType",
        "Lteam/opay/business/share/ui/EmailFragment;",
        "a",
        "(Ljava/lang/String;)Lteam/opay/business/share/ui/EmailFragment;",
        "business-share_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/EmailFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lteam/opay/business/share/ui/EmailFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/business/share/ui/EmailFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/share/ui/EmailFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lteam/opay/business/share/ui/EmailFragment;->b0(Lteam/opay/business/share/ui/EmailFragment;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
