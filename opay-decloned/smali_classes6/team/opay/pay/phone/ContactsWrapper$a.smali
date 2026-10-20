.class public final Lteam/opay/pay/phone/ContactsWrapper$a;
.super Ljava/lang/Object;
.source "ContactsWrapper.kt"

# interfaces
.implements Lzf8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/phone/ContactsWrapper;-><init>(Lteam/opay/pay/android/views/DetailInputText;Lteam/opay/pay/phone/ContactsHandler;Landroid/app/Activity;Lag8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/pay/phone/ContactsWrapper$a",
        "Lzf8;",
        "",
        "cleanup",
        "()V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/phone/ContactsWrapper;


# direct methods
.method public constructor <init>(Lteam/opay/pay/phone/ContactsWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/phone/ContactsWrapper$a;->a:Lteam/opay/pay/phone/ContactsWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/h;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactsWrapper$a;->a:Lteam/opay/pay/phone/ContactsWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/phone/ContactsWrapper;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
