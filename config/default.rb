ConfigData = {
  db: {
    engine: "InnoDB",
    charset: "utf8"
  },
  tables: {
    users: {
      login: {type: :text},
      password_hash: {type: :text}
    },
    flats: {
      uid: {type: :text},
    },
    flat_snapshots: {
      flat_id: {type: :integer},
      price: {},
      metro: {},
      address: {},
      details: {},
      stage: {},
      stage_amount: {},
      description: {type: :text},
      square: {},
      district: {},
      rooms: {},
      live_square: {},
      kitchen: {},
      corridor: {},
      house_type: {},
      rest_room_type: {},
      price_per_meter: {},
      contacts: {},
      link_to_map: {type: :text},
      contact_link: {type: :text},
      link_to_details: {type: :text},
      placed_at: {},
      created_at: {type: :datetime},
      iteration_id: {type: :integer},
      unread: {type: :boolean, default: false},
      changed: {type: :boolean, default: false}
    },
    searches: {
      user_id: {type: :integer},
      flat_types: {},
      min_price: {},
      max_price: {},
      min_square: {},
      max_square: {},
      districts: {},
      metros: {},
      interval: {}
    },
    iterations: {
      search_id: {type: :integer},
      created_at: {type: :datetime}
    },
    black_lists: {
      user_id: {type: :integer},
      flat_id: {type: :integer}
    }
  }
}
